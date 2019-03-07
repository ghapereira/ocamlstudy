FROM ocaml/opam2:alpine

RUN sudo apk add m4
RUN opam install utop --yes

WORKDIR /study
