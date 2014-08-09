#/usr/bin/env bats
# Test harness for BATS automation

@test "stubbing" {
    stub 'ip addr' and_output 'foops' and_return 1
    run ip addr

    [ "$output" = 'foops' ]
    [ "$status" = 1 ]

}
