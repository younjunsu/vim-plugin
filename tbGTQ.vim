function TbGTQ(...)
        " TIBERO tbsql Go to query
        let q1="SELECT * FROM "
        let q2="SELECT owner, object_name, object_type, status FROM dba_objects"
        let q3="SELECT * FROM V$SESSION"
        let q4="SELECT INSTANCE_NAME FROM V$INSTANCE"
        let q5=""
        let q6=""
        let q7=""
        let q8=""
        let q9=""
        let q10=""

        " Do not touch !!
        let qt=a:1
                        if qt == 1
                                call append('0',q1)
                        endif

                        if qt == 2
                                call append('0',q2)
                        endif

                        if qt == 3
                                call append('0',q3)
                        endif

                        if qt == 4
                                call append('0',q4)
                        endif

                        if qt == 5
                                call append('0',q5)
                        endif

                        if qt == 6
                                call append('0',q6)
                        endif

                        if qt == 7
                                  call append('0',q7)
                        endif

                        if qt == 8
                                  call append('0',q8)
                        endif

                        if qt == 9
                                  call append('0',q9)
                        endif

                        if qt == 10
                                  call append('0',q10)
                        endif

endfunction
command!  -nargs=1 Tq call TbGTQ(<q-args>)
