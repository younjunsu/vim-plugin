Python 모듈을 활용한 SQL 정렬 기능을 제공 합니다.
- 최초 1회 설치만 root 계정에서 진행하면 됩니다.
- cub_sql_indent.py 코드만 CUBRID에서 제공 합니다.
- Python 2.6 이상에서 동작 합니다.

< 설치 >
# cd sqlparse-master
# python setup.py install

< 실행 >
# python cub_sql_indent.py
usage: python cub_sql_indent.py [options]

options:
 -i --input  : Input SQL
 -f --file   : Input SQL File
 -h --help   : help
 Output file : -f <input sql file> -o <output file>


< 파이썬 내 실행 >
>>> import sqlparse
>>> SQL_Q1='select ㆍㆍㆍㆍㆍ 중략 ㆍㆍㆍㆍㆍ order by wflb_server_ip, worker_name' 
>>> print(sqlparse.format(SQL_Q1, reindent=True))
select wflb_server_ip as wflbServerIp,
       worker_name as workerName,
       worker_type as workerType,
       worker_proc as workerProc
from tb_stwflbworkerqueue
where 1=1
  and wflb_server_ip = ?
  and worker_proc = ?
  and worker_type = ?
order by wflb_server_ip,
         worker_name

< ERROR >
1) No module named setuptools
- # cd setuptools-18.2
- # python setup.py install

2) No module named argparse
# cd argparse-1.4.0
# python setup.py install

3) importlib module not found
# cd importlib-1.0.1
# python setup.py install
