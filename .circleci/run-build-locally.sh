curl --user 5f6421c438e34908e4c0d6b7bd9a325082f95a2f: \
    --request POST \
    --form revision=fed14635e2c26014d0fd5cbe623f76da84ec76eb \
    --form config=@config.yml \
    --form notify=false \
        https://circleci.com/api/v1.1/project/github/clgriffin/circle_apps/tree/master


