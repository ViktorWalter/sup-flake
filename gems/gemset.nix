{
  benchmark = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0v1337j39w1z7x9zs4q7ag0nfv4vs4xlsjx2la0wpv8s6hig2pa6";
      type = "gem";
    };
    version = "0.5.0";
  };
  chronic = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1hrdkn4g8x7dlzxwb1rfgr8kw3bp4ywg5l4y4i9c2g5cwv62yvvn";
      type = "gem";
    };
    version = "0.10.2";
  };
  fiddle = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vifygrkw22gcd4wzh8gc4pv6h1zpk6kll6mmprrf5174wvfxa3z";
      type = "gem";
    };
    version = "1.1.8";
  };
  highline = {
    dependencies = ["reline"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0jmvyhjp2v3iq47la7w6psrxbprnbnmzz0hxxski3vzn356x7jv7";
      type = "gem";
    };
    version = "3.1.2";
  };
  io-console = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1m8lcj26n7qchw21iaafk96mzsqj8b6kjnr455k430269jzrppc3";
      type = "gem";
    };
    version = "0.9.5";
  };
  locale = {
    dependencies = ["fiddle"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x1fnf4knvyzb9br6ja7b1nvy0860nax0i8rx4ljrnvbmbl06s0w";
      type = "gem";
    };
    version = "2.1.5";
  };
  lockfile = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0dij3ijywylvfgrpi2i0k17f6w0wjhnjjw0k9030f54z56cz7jrr";
      type = "gem";
    };
    version = "2.1.3";
  };
  logger = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00q2zznygpbls8asz5knjvvj2brr3ghmqxgr83xnrdj4rk3xwvhr";
      type = "gem";
    };
    version = "1.7.0";
  };
  mime-types = {
    dependencies = ["logger" "mime-types-data"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mjyxl7c0xzyqdqa8r45hqg7jcw2prp3hkp39mdf223g4hfgdsyw";
      type = "gem";
    };
    version = "3.7.0";
  };
  mime-types-data = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0r6w8jg4zdy84wd6qg8yhr61xlvf1s0fmb00w0rzvwcmv2aaz9yd";
      type = "gem";
    };
    version = "3.2026.1103";
  };
  ncursesw = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1dgc3hzgc0w3mbcvyhwjn0vng81dkibcgd73jx0br2p1a41l6sdp";
      type = "gem";
    };
    version = "1.4.14";
  };
  optimist = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0kp3f8g7g7cbw5vfkmpdv71pphhpcxk3lpc892mj9apkd7ys1y4c";
      type = "gem";
    };
    version = "3.2.1";
  };
  reline = {
    dependencies = ["io-console"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gaq2lc463ap1srz7y5kh2p4dxazs7vjrpiby58d9yfvan72s0av";
      type = "gem";
    };
    version = "0.7.0";
  };
  rmail = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m5npkmv764m725wzjzasgf3k8q5anf3vfr6k2cac1xj6jc8lcqi";
      type = "gem";
    };
    version = "1.1.4";
  };
  sup = {
    dependencies = ["benchmark" "chronic" "fiddle" "highline" "locale" "lockfile" "mime-types" "ncursesw" "optimist" "rmail" "unicode" "unicode-display_width"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "188vzg7wzykg1kdbj2mfci4rbyxdwikgqpqshhz43xl40i4mh1pd";
      type = "gem";
    };
    version = "1.4";
  };
  unicode = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1mx9lwzy021lpcqql5kn4yi20njhf5h7c7wxm2fx51p1r2zr9wj2";
      type = "gem";
    };
    version = "0.4.4.5";
  };
  unicode-display_width = {
    dependencies = ["unicode-emoji"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04xnl0zwpjjvxipd6rdnxkm11pfhbhhi3179yzv51nqi9dmacyjb";
      type = "gem";
    };
    version = "3.3.0";
  };
  unicode-emoji = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1kp89lja8ii7l6f0bq5vdxq1p3kxr3a2qmmhdc38qdwh6akjzh0i";
      type = "gem";
    };
    version = "4.3.0";
  };
  xapian-ruby = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0070gc3q3j41wxajakhj8vpyp2p18j1rhl20cpcj645vccgvqd21";
      type = "gem";
    };
    version = "1.4.27";
  };
}
