_default:
    just --list

sep := ' -o '
n_c := '-name "*.c"'
n_h := '-name "*.h"'
n_cpp := '-name "*.cpp"'
n_cc := '-name "*.cc"'
n_hh := '-name "*.hh"'

all_src := n_c + sep + n_h + sep + n_cpp + sep + n_cc + sep + n_hh

fmt:
    @find . -type f \( {{all_src}} \) -exec clang-format -i {} +