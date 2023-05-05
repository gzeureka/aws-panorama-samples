                #!/bin/bash
  
                sudo apt-get update
                sudo apt-get install -y python3 python3-distutils build-essential cmake curl ca-certificates
                curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
                sudo python3 /tmp/get-pip.py
                rm /tmp/get-pip.py
                sudo pip3 install -U pip setuptools wheel

                git clone --recursive https://github.com/neo-ai/neo-ai-dlr
                cd neo-ai-dlr
                mkdir build
                cd build

                cmake -D CMAKE_INSTALL_PREFIX=/usr/local ../
                make -j4
                cd ../python
                sudo python3 setup.py install