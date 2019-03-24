images := $(patsubst queries/%.sql,output/%.png,$(wildcard queries/*.sql))

all: $(images)

#Color scheme: ['#1b9e77','#d95f02','#7570b3','#e7298a','#66a61e','#e6ab02','#a6761d']
output/%.png: queries/%.gp intermediates/%.csv settings.gp intermediates/distributions.csv
	mkdir -p output
	gnuplot -e 'set term png; set output "$@"; set datafile separator ","; data = "$(word 2, $^)"' -c $<
	
intermediates/%.csv: queries/%.sql results.db
	mkdir -p intermediates
	sqlite3 -csv -init $< results.db ".quit" > $@

results.db: results.csv samples.csv makedb.sql
	rm -f results.db && sqlite3 results.db < makedb.sql

clean:
	rm -rf *.png *.db intermediates/ output/
