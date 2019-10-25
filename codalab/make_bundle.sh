# one-liner taken from https://stackoverflow.com/a/246128/3801744
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

rm -f $DIR/bundle/*

cp $DIR/competition/* $DIR/bundle

zip -j $DIR/bundle/data_train.zip $DIR/../data/ph1_train.h5 $DIR/../data/.dummy
zip -j $DIR/bundle/data_validation.zip $DIR/../data/ph1_validation.h5 $DIR/../data/.dummy
zip -j $DIR/bundle/data_test.zip $DIR/../data/ph1_test.h5 $DIR/../data/.dummy

zip -j $DIR/bundle/example_solution.zip $DIR/example_solution/*
zip -j $DIR/bundle/ingestion_program.zip $DIR/ingestion_program/* $DIR/config/*
zip -j $DIR/bundle/scoring_program.zip $DIR/scoring_program/* $DIR/config/
