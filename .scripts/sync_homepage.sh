#!/bin/bash
pushd ~/projects/django_homepage && git add . -A &&
git commit -a -m 'quicksync' &&
git push;
ssh django@j95.io 'cd django_homepage && git pull origin master' &&
popd;


