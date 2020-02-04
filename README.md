# uber_store_scraping
git, docker required.
## quick start
	$ git clone git@gitlab.com:xkitchen.dev/xkitchen.git
	$ cd xkitchen/uber_store_scraping
	$ docker build ./ -t scraping
	$ docker run -it scraping:latest bash
	(in docker) $ python uber_scraping.py
## usage

	scraping.py [-h|--help] [-v|--verbose] [-d|--detail_scraping] [-D|--driver_path <path>] [-s|--show_browser] [-l|--location <location>] [-L|--local_output]
 
	options:
    -h,--help                  show this help message and exit
    -d,--detail_scraping       detail scraping mode.
    -D,--driver_path <path>    declare chromedriver path. If not set, this script import chromedriver_binary
    -l,--location <location>   declare location to analyse. If not set, get locations from LOCATION_FILE.
    -s,--show_browser          do scraping without headless mode
    -L,--local_output          output result to output directory without gcs.
    -v,--verbose               verbose mode
