import 'package:meta/meta.dart';
import 'package:quiver/core.dart';

class Country {
  final String asset;
  final String dialingCode;
  final String isoCode;
  final String name;

  const Country({
    @required this.asset,
    @required this.dialingCode,
    @required this.isoCode,
    this.name = "",
  });

  @override
  bool operator ==(o) =>
      o is Country &&
      o.dialingCode == this.dialingCode &&
      o.isoCode == this.isoCode &&
      o.asset == this.asset &&
      o.name == this.name;

  int get hashCode => hash4(
        this.dialingCode.hashCode,
        this.asset.hashCode,
        this.name.hashCode,
        this.isoCode.hashCode,
      );

  static const Country AD = Country(
    asset: "assets/flags/ad_flag.png",
    dialingCode: "376",
    isoCode: "AD",
  );
  static const Country AE = Country(
    asset: "assets/flags/ae_flag.png",
    dialingCode: "971",
    isoCode: "AE",
  );
  static const Country AF = Country(
    asset: "assets/flags/af_flag.png",
    dialingCode: "93",
    isoCode: "AF",
  );
  static const Country AG = Country(
    asset: "assets/flags/ag_flag.png",
    dialingCode: "1",
    isoCode: "AG",
  );
  static const Country AI = Country(
    asset: "assets/flags/ai_flag.png",
    dialingCode: "1",
    isoCode: "AI",
  );
  static const Country AL = Country(
    asset: "assets/flags/al_flag.png",
    dialingCode: "355",
    isoCode: "AL",
  );
  static const Country AM = Country(
    asset: "assets/flags/am_flag.png",
    dialingCode: "374",
    isoCode: "AM",
  );
  static const Country AO = Country(
    asset: "assets/flags/ao_flag.png",
    dialingCode: "244",
    isoCode: "AO",
  );
  static const Country AQ = Country(
    asset: "assets/flags/aq_flag.png",
    dialingCode: "672",
    isoCode: "AQ",
  );
  static const Country AR = Country(
    asset: "assets/flags/ar_flag.png",
    dialingCode: "54",
    isoCode: "AR",
  );
  static const Country AS = Country(
    asset: "assets/flags/as_flag.png",
    dialingCode: "1",
    isoCode: "AS",
  );
  static const Country AT = Country(
    asset: "assets/flags/at_flag.png",
    dialingCode: "43",
    isoCode: "AT",
  );
  static const Country AU = Country(
    asset: "assets/flags/au_flag.png",
    dialingCode: "61",
    isoCode: "AU",
  );
  static const Country AW = Country(
    asset: "assets/flags/aw_flag.png",
    dialingCode: "297",
    isoCode: "AW",
  );
  static const Country AX = Country(
    asset: "assets/flags/ax_flag.png",
    dialingCode: "358",
    isoCode: "AX",
  );
  static const Country AZ = Country(
    asset: "assets/flags/az_flag.png",
    dialingCode: "994",
    isoCode: "AZ",
  );
  static const Country BA = Country(
    asset: "assets/flags/ba_flag.png",
    dialingCode: "387",
    isoCode: "BA",
  );
  static const Country BB = Country(
    asset: "assets/flags/bb_flag.png",
    dialingCode: "1",
    isoCode: "BB",
  );
  static const Country BD = Country(
    asset: "assets/flags/bd_flag.png",
    dialingCode: "880",
    isoCode: "BD",
  );
  static const Country BE = Country(
    asset: "assets/flags/be_flag.png",
    dialingCode: "32",
    isoCode: "BE",
  );
  static const Country BF = Country(
    asset: "assets/flags/bf_flag.png",
    dialingCode: "226",
    isoCode: "BF",
  );
  static const Country BG = Country(
    asset: "assets/flags/bg_flag.png",
    dialingCode: "359",
    isoCode: "BG",
  );
  static const Country BH = Country(
    asset: "assets/flags/bh_flag.png",
    dialingCode: "973",
    isoCode: "BH",
  );
  static const Country BI = Country(
    asset: "assets/flags/bi_flag.png",
    dialingCode: "257",
    isoCode: "BI",
  );
  static const Country BJ = Country(
    asset: "assets/flags/bj_flag.png",
    dialingCode: "229",
    isoCode: "BJ",
  );
  static const Country BL = Country(
    asset: "assets/flags/bl_flag.png",
    dialingCode: "590",
    isoCode: "BL",
  );
  static const Country BM = Country(
    asset: "assets/flags/bm_flag.png",
    dialingCode: "1",
    isoCode: "BM",
  );
  static const Country BN = Country(
    asset: "assets/flags/bn_flag.png",
    dialingCode: "673",
    isoCode: "BN",
  );
  static const Country BO = Country(
    asset: "assets/flags/bo_flag.png",
    dialingCode: "591",
    isoCode: "BO",
  );
  static const Country BQ = Country(
    asset: "assets/flags/bq_flag.png",
    dialingCode: "599",
    isoCode: "BQ",
  );
  static const Country BR = Country(
    asset: "assets/flags/br_flag.png",
    dialingCode: "55",
    isoCode: "BR",
  );
  static const Country BS = Country(
    asset: "assets/flags/bs_flag.png",
    dialingCode: "1",
    isoCode: "BS",
  );
  static const Country BT = Country(
    asset: "assets/flags/bt_flag.png",
    dialingCode: "975",
    isoCode: "BT",
  );
  static const Country BV = Country(
    asset: "assets/flags/bv_flag.png",
    dialingCode: "55",
    isoCode: "BV",
  );
  static const Country BW = Country(
    asset: "assets/flags/bw_flag.png",
    dialingCode: "267",
    isoCode: "BW",
  );
  static const Country BY = Country(
    asset: "assets/flags/by_flag.png",
    dialingCode: "375",
    isoCode: "BY",
  );
  static const Country BZ = Country(
    asset: "assets/flags/bz_flag.png",
    dialingCode: "501",
    isoCode: "BZ",
  );
  static const Country CA = Country(
    asset: "assets/flags/ca_flag.png",
    dialingCode: "1",
    isoCode: "CA",
  );
  static const Country CC = Country(
    asset: "assets/flags/cc_flag.png",
    dialingCode: "891",
    isoCode: "CC",
  );
  static const Country CD = Country(
    asset: "assets/flags/cd_flag.png",
    dialingCode: "243",
    isoCode: "CD",
  );
  static const Country CF = Country(
    asset: "assets/flags/cf_flag.png",
    dialingCode: "236",
    isoCode: "CF",
  );
  static const Country CG = Country(
    asset: "assets/flags/cg_flag.png",
    dialingCode: "242",
    isoCode: "CG",
  );
  static const Country CH = Country(
    asset: "assets/flags/ch_flag.png",
    dialingCode: "41",
    isoCode: "CH",
  );
  static const Country CI = Country(
    asset: "assets/flags/ci_flag.png",
    dialingCode: "225",
    isoCode: "CI",
  );
  static const Country CK = Country(
    asset: "assets/flags/ck_flag.png",
    dialingCode: "682",
    isoCode: "CK",
  );
  static const Country CL = Country(
    asset: "assets/flags/cl_flag.png",
    dialingCode: "56",
    isoCode: "CL",
  );
  static const Country CM = Country(
    asset: "assets/flags/cm_flag.png",
    dialingCode: "237",
    isoCode: "CM",
  );
  static const Country CN = Country(
    asset: "assets/flags/cn_flag.png",
    dialingCode: "86",
    isoCode: "CN",
  );
  static const Country CO = Country(
    asset: "assets/flags/co_flag.png",
    dialingCode: "57",
    isoCode: "CO",
  );
  static const Country CR = Country(
    asset: "assets/flags/cr_flag.png",
    dialingCode: "506",
    isoCode: "CR",
  );
  static const Country CU = Country(
    asset: "assets/flags/cu_flag.png",
    dialingCode: "53",
    isoCode: "CU",
  );
  static const Country CV = Country(
    asset: "assets/flags/cv_flag.png",
    dialingCode: "238",
    isoCode: "CV",
  );
  static const Country CW = Country(
    asset: "assets/flags/cw_flag.png",
    dialingCode: "599",
    isoCode: "CW",
  );
  static const Country CX = Country(
    asset: "assets/flags/cx_flag.png",
    dialingCode: "61",
    isoCode: "CX",
  );
  static const Country CY = Country(
    asset: "assets/flags/cy_flag.png",
    dialingCode: "357",
    isoCode: "CY",
  );
  static const Country CZ = Country(
    asset: "assets/flags/cz_flag.png",
    dialingCode: "420",
    isoCode: "CZ",
  );
  static const Country DE = Country(
    asset: "assets/flags/de_flag.png",
    dialingCode: "49",
    isoCode: "DE",
  );
  static const Country DJ = Country(
    asset: "assets/flags/dj_flag.png",
    dialingCode: "253",
    isoCode: "DJ",
  );
  static const Country DK = Country(
    asset: "assets/flags/dk_flag.png",
    dialingCode: "45",
    isoCode: "DK",
  );
  static const Country DM = Country(
    asset: "assets/flags/dm_flag.png",
    dialingCode: "1",
    isoCode: "DM",
  );
  static const Country DO = Country(
    asset: "assets/flags/do_flag.png",
    dialingCode: "1",
    isoCode: "DO",
  );
  static const Country DZ = Country(
    asset: "assets/flags/dz_flag.png",
    dialingCode: "213",
    isoCode: "DZ",
  );
  static const Country EC = Country(
    asset: "assets/flags/ec_flag.png",
    dialingCode: "593",
    isoCode: "EC",
  );
  static const Country EE = Country(
    asset: "assets/flags/ee_flag.png",
    dialingCode: "372",
    isoCode: "EE",
  );
  static const Country EG = Country(
    asset: "assets/flags/eg_flag.png",
    dialingCode: "20",
    isoCode: "EG",
  );
  static const Country EH = Country(
    asset: "assets/flags/eh_flag.png",
    dialingCode: "212",
    isoCode: "EH",
  );
  static const Country ER = Country(
    asset: "assets/flags/er_flag.png",
    dialingCode: "291",
    isoCode: "ER",
  );
  static const Country ES = Country(
    asset: "assets/flags/es_flag.png",
    dialingCode: "34",
    isoCode: "ES",
  );
  static const Country ET = Country(
    asset: "assets/flags/et_flag.png",
    dialingCode: "251",
    isoCode: "ET",
  );
  static const Country FI = Country(
    asset: "assets/flags/fi_flag.png",
    dialingCode: "358",
    isoCode: "FI",
  );
  static const Country FJ = Country(
    asset: "assets/flags/fj_flag.png",
    dialingCode: "679",
    isoCode: "FJ",
  );
  static const Country FK = Country(
    asset: "assets/flags/fk_flag.png",
    dialingCode: "500",
    isoCode: "FK",
  );
  static const Country FM = Country(
    asset: "assets/flags/fm_flag.png",
    dialingCode: "691",
    isoCode: "FM",
  );
  static const Country FO = Country(
    asset: "assets/flags/fo_flag.png",
    dialingCode: "298",
    isoCode: "FO",
  );
  static const Country FR = Country(
    asset: "assets/flags/fr_flag.png",
    dialingCode: "33",
    isoCode: "FR",
  );
  static const Country GA = Country(
    asset: "assets/flags/ga_flag.png",
    dialingCode: "241",
    isoCode: "GA",
  );
  static const Country GB = Country(
    asset: "assets/flags/gb_flag.png",
    dialingCode: "44",
    isoCode: "GB",
  );
  static const Country GD = Country(
    asset: "assets/flags/gd_flag.png",
    dialingCode: "1",
    isoCode: "GD",
  );
  static const Country GE = Country(
    asset: "assets/flags/ge_flag.png",
    dialingCode: "995",
    isoCode: "GE",
  );
  static const Country GF = Country(
    asset: "assets/flags/gf_flag.png",
    dialingCode: "594",
    isoCode: "GF",
  );
  static const Country GG = Country(
    asset: "assets/flags/gg_flag.png",
    dialingCode: "44",
    isoCode: "GG",
  );
  static const Country GH = Country(
    asset: "assets/flags/gh_flag.png",
    dialingCode: "233",
    isoCode: "GH",
  );
  static const Country GI = Country(
    asset: "assets/flags/gi_flag.png",
    dialingCode: "350",
    isoCode: "GI",
  );
  static const Country GL = Country(
    asset: "assets/flags/gl_flag.png",
    dialingCode: "299",
    isoCode: "GL",
  );
  static const Country GM = Country(
    asset: "assets/flags/gm_flag.png",
    dialingCode: "220",
    isoCode: "GM",
  );
  static const Country GN = Country(
    asset: "assets/flags/gn_flag.png",
    dialingCode: "224",
    isoCode: "GN",
  );
  static const Country GP = Country(
    asset: "assets/flags/gp_flag.png",
    dialingCode: "590",
    isoCode: "GP",
  );
  static const Country GQ = Country(
    asset: "assets/flags/gq_flag.png",
    dialingCode: "240",
    isoCode: "GQ",
  );
  static const Country GR = Country(
    asset: "assets/flags/gr_flag.png",
    dialingCode: "30",
    isoCode: "GR",
  );
  static const Country GS = Country(
    asset: "assets/flags/gs_flag.png",
    dialingCode: "500",
    isoCode: "GS",
  );
  static const Country GT = Country(
    asset: "assets/flags/gt_flag.png",
    dialingCode: "502",
    isoCode: "GT",
  );
  static const Country GU = Country(
    asset: "assets/flags/gu_flag.png",
    dialingCode: "1",
    isoCode: "GU",
  );
  static const Country GW = Country(
    asset: "assets/flags/gw_flag.png",
    dialingCode: "245",
    isoCode: "GW",
  );
  static const Country GY = Country(
    asset: "assets/flags/gy_flag.png",
    dialingCode: "592",
    isoCode: "GY",
  );
  static const Country HK = Country(
    asset: "assets/flags/hk_flag.png",
    dialingCode: "852",
    isoCode: "HK",
  );
  static const Country HM = Country(
    asset: "assets/flags/hm_flag.png",
    dialingCode: "61",
    isoCode: "HM",
  );
  static const Country HN = Country(
    asset: "assets/flags/hn_flag.png",
    dialingCode: "504",
    isoCode: "HN",
  );
  static const Country HR = Country(
    asset: "assets/flags/hr_flag.png",
    dialingCode: "385",
    isoCode: "HR",
  );
  static const Country HT = Country(
    asset: "assets/flags/ht_flag.png",
    dialingCode: "509",
    isoCode: "HT",
  );
  static const Country HU = Country(
    asset: "assets/flags/hu_flag.png",
    dialingCode: "36",
    isoCode: "HU",
  );
  static const Country ID = Country(
    asset: "assets/flags/id_flag.png",
    dialingCode: "62",
    isoCode: "ID",
  );
  static const Country IE = Country(
    asset: "assets/flags/ie_flag.png",
    dialingCode: "353",
    isoCode: "IE",
  );
  static const Country IL = Country(
    asset: "assets/flags/il_flag.png",
    dialingCode: "972",
    isoCode: "IL",
  );
  static const Country IM = Country(
    asset: "assets/flags/im_flag.png",
    dialingCode: "44",
    isoCode: "IM",
  );
  static const Country IN = Country(
    asset: "assets/flags/in_flag.png",
    dialingCode: "91",
    isoCode: "IN",
  );
  static const Country IO = Country(
    asset: "assets/flags/io_flag.png",
    dialingCode: "246",
    isoCode: "IO",
  );
  static const Country IQ = Country(
    asset: "assets/flags/iq_flag.png",
    dialingCode: "964",
    isoCode: "IQ",
  );
  static const Country IR = Country(
    asset: "assets/flags/ir_flag.png",
    dialingCode: "98",
    isoCode: "IR",
  );
  static const Country IS = Country(
    asset: "assets/flags/is_flag.png",
    dialingCode: "354",
    isoCode: "IS",
  );
  static const Country IT = Country(
    asset: "assets/flags/it_flag.png",
    dialingCode: "39",
    isoCode: "IT",
  );
  static const Country JE = Country(
    asset: "assets/flags/je_flag.png",
    dialingCode: "44",
    isoCode: "JE",
  );
  static const Country JM = Country(
    asset: "assets/flags/jm_flag.png",
    dialingCode: "1",
    isoCode: "JM",
  );
  static const Country JO = Country(
    asset: "assets/flags/jo_flag.png",
    dialingCode: "962",
    isoCode: "JO",
  );
  static const Country JP = Country(
    asset: "assets/flags/jp_flag.png",
    dialingCode: "81",
    isoCode: "JP",
  );
  static const Country KE = Country(
    asset: "assets/flags/ke_flag.png",
    dialingCode: "254",
    isoCode: "KE",
  );
  static const Country KG = Country(
    asset: "assets/flags/kg_flag.png",
    dialingCode: "996",
    isoCode: "KG",
  );
  static const Country KH = Country(
    asset: "assets/flags/kh_flag.png",
    dialingCode: "855",
    isoCode: "KH",
  );
  static const Country KI = Country(
    asset: "assets/flags/ki_flag.png",
    dialingCode: "686",
    isoCode: "KI",
  );
  static const Country KM = Country(
    asset: "assets/flags/km_flag.png",
    dialingCode: "269",
    isoCode: "KM",
  );
  static const Country KN = Country(
    asset: "assets/flags/kn_flag.png",
    dialingCode: "1",
    isoCode: "KN",
  );
  static const Country KP = Country(
    asset: "assets/flags/kp_flag.png",
    dialingCode: "850",
    isoCode: "KP",
  );
  static const Country KR = Country(
    asset: "assets/flags/kr_flag.png",
    dialingCode: "82",
    isoCode: "KR",
  );
  static const Country KW = Country(
    asset: "assets/flags/kw_flag.png",
    dialingCode: "965",
    isoCode: "KW",
  );
  static const Country KY = Country(
    asset: "assets/flags/ky_flag.png",
    dialingCode: "965",
    isoCode: "KY",
  );
  static const Country KZ = Country(
    asset: "assets/flags/kz_flag.png",
    dialingCode: "7",
    isoCode: "KZ",
  );
  static const Country LA = Country(
    asset: "assets/flags/la_flag.png",
    dialingCode: "856",
    isoCode: "LA",
  );
  static const Country LB = Country(
    asset: "assets/flags/lb_flag.png",
    dialingCode: "961",
    isoCode: "LB",
  );
  static const Country LC = Country(
    asset: "assets/flags/lc_flag.png",
    dialingCode: "1",
    isoCode: "LC",
  );
  static const Country LI = Country(
    asset: "assets/flags/li_flag.png",
    dialingCode: "423",
    isoCode: "LI",
  );
  static const Country LK = Country(
    asset: "assets/flags/lk_flag.png",
    dialingCode: "94",
    isoCode: "LK",
  );
  static const Country LR = Country(
    asset: "assets/flags/lr_flag.png",
    dialingCode: "231",
    isoCode: "LR",
  );
  static const Country LS = Country(
    asset: "assets/flags/ls_flag.png",
    dialingCode: "266",
    isoCode: "LS",
  );
  static const Country LT = Country(
    asset: "assets/flags/lt_flag.png",
    dialingCode: "370",
    isoCode: "LT",
  );
  static const Country LU = Country(
    asset: "assets/flags/lu_flag.png",
    dialingCode: "352",
    isoCode: "LU",
  );
  static const Country LV = Country(
    asset: "assets/flags/lv_flag.png",
    dialingCode: "371",
    isoCode: "LV",
  );
  static const Country LY = Country(
    asset: "assets/flags/ly_flag.png",
    dialingCode: "218",
    isoCode: "LY",
  );
  static const Country MA = Country(
    asset: "assets/flags/ma_flag.png",
    dialingCode: "212",
    isoCode: "MA",
  );
  static const Country MC = Country(
    asset: "assets/flags/mc_flag.png",
    dialingCode: "377",
    isoCode: "MC",
  );
  static const Country MD = Country(
    asset: "assets/flags/md_flag.png",
    dialingCode: "373",
    isoCode: "MD",
  );
  static const Country ME = Country(
    asset: "assets/flags/me_flag.png",
    dialingCode: "382",
    isoCode: "ME",
  );
  static const Country MF = Country(
    asset: "assets/flags/mf_flag.png",
    dialingCode: "1",
    isoCode: "MF",
  );
  static const Country MG = Country(
    asset: "assets/flags/mg_flag.png",
    dialingCode: "261",
    isoCode: "MG",
  );
  static const Country MH = Country(
    asset: "assets/flags/mh_flag.png",
    dialingCode: "692",
    isoCode: "MH",
  );
  static const Country MK = Country(
    asset: "assets/flags/mk_flag.png",
    dialingCode: "389",
    isoCode: "MK",
  );
  static const Country ML = Country(
    asset: "assets/flags/ml_flag.png",
    dialingCode: "223",
    isoCode: "ML",
  );
  static const Country MM = Country(
    asset: "assets/flags/mm_flag.png",
    dialingCode: "95",
    isoCode: "MM",
  );
  static const Country MN = Country(
    asset: "assets/flags/mn_flag.png",
    dialingCode: "976",
    isoCode: "MN",
  );
  static const Country MO = Country(
    asset: "assets/flags/mo_flag.png",
    dialingCode: "853",
    isoCode: "MO",
  );
  static const Country MP = Country(
    asset: "assets/flags/mp_flag.png",
    dialingCode: "1",
    isoCode: "MP",
  );
  static const Country MQ = Country(
    asset: "assets/flags/mq_flag.png",
    dialingCode: "596",
    isoCode: "MQ",
  );
  static const Country MR = Country(
    asset: "assets/flags/mr_flag.png",
    dialingCode: "222",
    isoCode: "MR",
  );
  static const Country MS = Country(
    asset: "assets/flags/ms_flag.png",
    dialingCode: "1",
    isoCode: "MS",
  );
  static const Country MT = Country(
    asset: "assets/flags/mt_flag.png",
    dialingCode: "356",
    isoCode: "MT",
  );
  static const Country MU = Country(
    asset: "assets/flags/mu_flag.png",
    dialingCode: "230",
    isoCode: "MU",
  );
  static const Country MV = Country(
    asset: "assets/flags/mv_flag.png",
    dialingCode: "960",
    isoCode: "MV",
  );
  static const Country MW = Country(
    asset: "assets/flags/mw_flag.png",
    dialingCode: "265",
    isoCode: "MW",
  );
  static const Country MX = Country(
    asset: "assets/flags/mx_flag.png",
    dialingCode: "52",
    isoCode: "MX",
  );
  static const Country MY = Country(
    asset: "assets/flags/my_flag.png",
    dialingCode: "60",
    isoCode: "MY",
  );
  static const Country MZ = Country(
    asset: "assets/flags/mz_flag.png",
    dialingCode: "258",
    isoCode: "MZ",
  );
  static const Country NA = Country(
    asset: "assets/flags/na_flag.png",
    dialingCode: "264",
    isoCode: "NA",
  );
  static const Country NC = Country(
    asset: "assets/flags/nc_flag.png",
    dialingCode: "687",
    isoCode: "NC",
  );
  static const Country NE = Country(
    asset: "assets/flags/ne_flag.png",
    dialingCode: "227",
    isoCode: "NE",
  );
  static const Country NF = Country(
    asset: "assets/flags/nf_flag.png",
    dialingCode: "672",
    isoCode: "NF",
  );
  static const Country NG = Country(
    asset: "assets/flags/ng_flag.png",
    dialingCode: "234",
    isoCode: "NG",
  );
  static const Country NI = Country(
    asset: "assets/flags/ni_flag.png",
    dialingCode: "505",
    isoCode: "NI",
  );
  static const Country NL = Country(
    asset: "assets/flags/nl_flag.png",
    dialingCode: "31",
    isoCode: "NL",
  );
  static const Country NO = Country(
    asset: "assets/flags/no_flag.png",
    dialingCode: "47",
    isoCode: "NO",
  );
  static const Country NP = Country(
    asset: "assets/flags/np_flag.png",
    dialingCode: "977",
    isoCode: "NP",
  );
  static const Country NR = Country(
    asset: "assets/flags/nr_flag.png",
    dialingCode: "674",
    isoCode: "NR",
  );
  static const Country NU = Country(
    asset: "assets/flags/nu_flag.png",
    dialingCode: "683",
    isoCode: "NU",
  );
  static const Country NZ = Country(
    asset: "assets/flags/nz_flag.png",
    dialingCode: "64",
    isoCode: "NZ",
  );
  static const Country OM = Country(
    asset: "assets/flags/om_flag.png",
    dialingCode: "968",
    isoCode: "OM",
  );
  static const Country PA = Country(
    asset: "assets/flags/pa_flag.png",
    dialingCode: "507",
    isoCode: "PA",
  );
  static const Country PE = Country(
    asset: "assets/flags/pe_flag.png",
    dialingCode: "51",
    isoCode: "PE",
  );
  static const Country PF = Country(
    asset: "assets/flags/pf_flag.png",
    dialingCode: "689",
    isoCode: "PF",
  );
  static const Country PG = Country(
    asset: "assets/flags/pg_flag.png",
    dialingCode: "675",
    isoCode: "PG",
  );
  static const Country PH = Country(
    asset: "assets/flags/ph_flag.png",
    dialingCode: "63",
    isoCode: "PH",
  );
  static const Country PK = Country(
    asset: "assets/flags/pk_flag.png",
    dialingCode: "92",
    isoCode: "PK",
  );
  static const Country PL = Country(
    asset: "assets/flags/pl_flag.png",
    dialingCode: "48",
    isoCode: "PL",
  );
  static const Country PM = Country(
    asset: "assets/flags/pm_flag.png",
    dialingCode: "508",
    isoCode: "PM",
  );
  static const Country PN = Country(
    asset: "assets/flags/pn_flag.png",
    dialingCode: "64",
    isoCode: "PN",
  );
  static const Country PR = Country(
    asset: "assets/flags/pr_flag.png",
    dialingCode: "1",
    isoCode: "PR",
  );
  static const Country PS = Country(
    asset: "assets/flags/ps_flag.png",
    dialingCode: "970",
    isoCode: "PS",
  );
  static const Country PT = Country(
    asset: "assets/flags/pt_flag.png",
    dialingCode: "351",
    isoCode: "PT",
  );
  static const Country PW = Country(
    asset: "assets/flags/pw_flag.png",
    dialingCode: "680",
    isoCode: "PW",
  );
  static const Country PY = Country(
    asset: "assets/flags/py_flag.png",
    dialingCode: "595",
    isoCode: "PY",
  );
  static const Country QA = Country(
    asset: "assets/flags/qa_flag.png",
    dialingCode: "974",
    isoCode: "QA",
  );
  static const Country RE = Country(
    asset: "assets/flags/re_flag.png",
    dialingCode: "262",
    isoCode: "RE",
  );
  static const Country RO = Country(
    asset: "assets/flags/ro_flag.png",
    dialingCode: "40",
    isoCode: "RO",
  );
  static const Country RS = Country(
    asset: "assets/flags/rs_flag.png",
    dialingCode: "381",
    isoCode: "RS",
  );
  static const Country RU = Country(
    asset: "assets/flags/ru_flag.png",
    dialingCode: "7",
    isoCode: "RU",
  );
  static const Country RW = Country(
    asset: "assets/flags/rw_flag.png",
    dialingCode: "250",
    isoCode: "RW",
  );
  static const Country SA = Country(
    asset: "assets/flags/sa_flag.png",
    dialingCode: "966",
    isoCode: "SA",
  );
  static const Country SB = Country(
    asset: "assets/flags/sb_flag.png",
    dialingCode: "677",
    isoCode: "SB",
  );
  static const Country SC = Country(
    asset: "assets/flags/sc_flag.png",
    dialingCode: "248",
    isoCode: "SC",
  );
  static const Country SD = Country(
    asset: "assets/flags/sd_flag.png",
    dialingCode: "249",
    isoCode: "SD",
  );
  static const Country SE = Country(
    asset: "assets/flags/se_flag.png",
    dialingCode: "46",
    isoCode: "SE",
  );
  static const Country SG = Country(
    asset: "assets/flags/sg_flag.png",
    dialingCode: "65",
    isoCode: "SG",
  );
  static const Country SH = Country(
    asset: "assets/flags/sh_flag.png",
    dialingCode: "290",
    isoCode: "SH",
  );
  static const Country SI = Country(
    asset: "assets/flags/si_flag.png",
    dialingCode: "386",
    isoCode: "SI",
  );
  static const Country SJ = Country(
    asset: "assets/flags/sj_flag.png",
    dialingCode: "47",
    isoCode: "SJ",
  );
  static const Country SK = Country(
    asset: "assets/flags/sk_flag.png",
    dialingCode: "421",
    isoCode: "SK",
  );
  static const Country SL = Country(
    asset: "assets/flags/sl_flag.png",
    dialingCode: "232",
    isoCode: "SL",
  );
  static const Country SM = Country(
    asset: "assets/flags/sm_flag.png",
    dialingCode: "378",
    isoCode: "SM",
  );
  static const Country SN = Country(
    asset: "assets/flags/sn_flag.png",
    dialingCode: "221",
    isoCode: "SN",
  );
  static const Country SO = Country(
    asset: "assets/flags/so_flag.png",
    dialingCode: "252",
    isoCode: "SO",
  );
  static const Country SR = Country(
    asset: "assets/flags/sr_flag.png",
    dialingCode: "597",
    isoCode: "SR",
  );
  static const Country SS = Country(
    asset: "assets/flags/ss_flag.png",
    dialingCode: "211",
    isoCode: "SS",
  );
  static const Country ST = Country(
    asset: "assets/flags/st_flag.png",
    dialingCode: "239",
    isoCode: "ST",
  );
  static const Country SV = Country(
    asset: "assets/flags/sv_flag.png",
    dialingCode: "503",
    isoCode: "SV",
  );
  static const Country SX = Country(
    asset: "assets/flags/sx_flag.png",
    dialingCode: "1",
    isoCode: "SX",
  );
  static const Country SY = Country(
    asset: "assets/flags/sy_flag.png",
    dialingCode: "963",
    isoCode: "SY",
  );
  static const Country SZ = Country(
    asset: "assets/flags/sz_flag.png",
    dialingCode: "268",
    isoCode: "SZ",
  );
  static const Country TC = Country(
    asset: "assets/flags/tc_flag.png",
    dialingCode: "1",
    isoCode: "TC",
  );
  static const Country TD = Country(
    asset: "assets/flags/td_flag.png",
    dialingCode: "235",
    isoCode: "TD",
  );
  static const Country TF = Country(
    asset: "assets/flags/tf_flag.png",
    dialingCode: "262",
    isoCode: "TF",
  );
  static const Country TG = Country(
    asset: "assets/flags/tg_flag.png",
    dialingCode: "228",
    isoCode: "TG",
  );
  static const Country TH = Country(
    asset: "assets/flags/th_flag.png",
    dialingCode: "66",
    isoCode: "TH",
  );
  static const Country TJ = Country(
    asset: "assets/flags/tj_flag.png",
    dialingCode: "992",
    isoCode: "TJ",
  );
  static const Country TK = Country(
    asset: "assets/flags/tk_flag.png",
    dialingCode: "690",
    isoCode: "TK",
  );
  static const Country TL = Country(
    asset: "assets/flags/tl_flag.png",
    dialingCode: "670",
    isoCode: "TL",
  );
  static const Country TM = Country(
    asset: "assets/flags/tm_flag.png",
    dialingCode: "993",
    isoCode: "TM",
  );
  static const Country TN = Country(
    asset: "assets/flags/tn_flag.png",
    dialingCode: "216",
    isoCode: "TN",
  );
  static const Country TO = Country(
    asset: "assets/flags/to_flag.png",
    dialingCode: "676",
    isoCode: "TO",
  );
  static const Country TR = Country(
    asset: "assets/flags/tr_flag.png",
    dialingCode: "90",
    isoCode: "TR",
  );
  static const Country TT = Country(
    asset: "assets/flags/tt_flag.png",
    dialingCode: "1",
    isoCode: "TT",
  );
  static const Country TV = Country(
    asset: "assets/flags/tv_flag.png",
    dialingCode: "688",
    isoCode: "TV",
  );
  static const Country TW = Country(
    asset: "assets/flags/tw_flag.png",
    dialingCode: "886",
    isoCode: "TW",
  );
  static const Country TZ = Country(
    asset: "assets/flags/tz_flag.png",
    dialingCode: "255",
    isoCode: "TZ",
  );
  static const Country UA = Country(
    asset: "assets/flags/ua_flag.png",
    dialingCode: "380",
    isoCode: "UA",
  );
  static const Country UG = Country(
    asset: "assets/flags/ug_flag.png",
    dialingCode: "256",
    isoCode: "UG",
  );
  static const Country UM = Country(
    asset: "assets/flags/um_flag.png",
    dialingCode: "1",
    isoCode: "UM",
  );
  static const Country US = Country(
    asset: "assets/flags/us_flag.png",
    dialingCode: "1",
    isoCode: "US",
  );
  static const Country UY = Country(
    asset: "assets/flags/uy_flag.png",
    dialingCode: "598",
    isoCode: "UY",
  );
  static const Country UZ = Country(
    asset: "assets/flags/uz_flag.png",
    dialingCode: "998",
    isoCode: "UZ",
  );
  static const Country VA = Country(
    asset: "assets/flags/va_flag.png",
    dialingCode: "379",
    isoCode: "VA",
  );
  static const Country VC = Country(
    asset: "assets/flags/vc_flag.png",
    dialingCode: "1",
    isoCode: "VC",
  );
  static const Country VE = Country(
    asset: "assets/flags/ve_flag.png",
    dialingCode: "58",
    isoCode: "VE",
  );
  static const Country VG = Country(
    asset: "assets/flags/vg_flag.png",
    dialingCode: "1",
    isoCode: "VG",
  );
  static const Country VI = Country(
    asset: "assets/flags/vi_flag.png",
    dialingCode: "1",
    isoCode: "VI",
  );
  static const Country VN = Country(
    asset: "assets/flags/vn_flag.png",
    dialingCode: "84",
    isoCode: "VN",
  );
  static const Country VU = Country(
    asset: "assets/flags/vu_flag.png",
    dialingCode: "678",
    isoCode: "VU",
  );
  static const Country WF = Country(
    asset: "assets/flags/wf_flag.png",
    dialingCode: "681",
    isoCode: "WF",
  );
  static const Country WS = Country(
    asset: "assets/flags/ws_flag.png",
    dialingCode: "685",
    isoCode: "WS",
  );
  static const Country YE = Country(
    asset: "assets/flags/ye_flag.png",
    dialingCode: "967",
    isoCode: "YE",
  );
  static const Country YT = Country(
    asset: "assets/flags/yt_flag.png",
    dialingCode: "262",
    isoCode: "YT",
  );
  static const Country ZA = Country(
    asset: "assets/flags/za_flag.png",
    dialingCode: "27",
    isoCode: "ZA",
  );
  static const Country ZM = Country(
    asset: "assets/flags/zm_flag.png",
    dialingCode: "260",
    isoCode: "ZM",
  );
  static const Country ZW = Country(
    asset: "assets/flags/zw_flag.png",
    dialingCode: "263",
    isoCode: "ZW",
  );

  static const ALL = <Country>[
    AD,
    AE,
    AF,
    AG,
    AI,
    AL,
    AM,
    AO,
    AQ,
    AR,
    AS,
    AT,
    AU,
    AW,
    AX,
    AZ,
    BA,
    BB,
    BD,
    BE,
    BF,
    BG,
    BH,
    BI,
    BJ,
    BL,
    BM,
    BN,
    BO,
    BQ,
    BR,
    BS,
    BT,
    BV,
    BW,
    BY,
    BZ,
    CA,
    CC,
    CD,
    CF,
    CG,
    CH,
    CI,
    CK,
    CL,
    CM,
    CN,
    CO,
    CR,
    CU,
    CV,
    CW,
    CX,
    CY,
    CZ,
    DE,
    DJ,
    DK,
    DM,
    DO,
    DZ,
    EC,
    EE,
    EG,
    EH,
    ER,
    ES,
    ET,
    FI,
    FJ,
    FK,
    FM,
    FO,
    FR,
    GA,
    GB,
    GD,
    GE,
    GF,
    GG,
    GH,
    GI,
    GL,
    GM,
    GN,
    GP,
    GQ,
    GR,
    GS,
    GT,
    GU,
    GW,
    GY,
    HK,
    HM,
    HN,
    HR,
    HT,
    HU,
    ID,
    IE,
    IL,
    IM,
    IN,
    IO,
    IQ,
    IR,
    IS,
    IT,
    JE,
    JM,
    JO,
    JP,
    KE,
    KG,
    KH,
    KI,
    KM,
    KN,
    KP,
    KR,
    KW,
    KY,
    KZ,
    LA,
    LB,
    LC,
    LI,
    LK,
    LR,
    LS,
    LT,
    LU,
    LV,
    LY,
    MA,
    MC,
    MD,
    ME,
    MF,
    MG,
    MH,
    MK,
    ML,
    MM,
    MN,
    MO,
    MP,
    MQ,
    MR,
    MS,
    MT,
    MU,
    MV,
    MW,
    MX,
    MY,
    MZ,
    NA,
    NC,
    NE,
    NF,
    NG,
    NI,
    NL,
    NO,
    NP,
    NR,
    NU,
    NZ,
    OM,
    PA,
    PE,
    PF,
    PG,
    PH,
    PK,
    PL,
    PM,
    PN,
    PR,
    PS,
    PT,
    PW,
    PY,
    QA,
    RE,
    RO,
    RS,
    RU,
    RW,
    SA,
    SB,
    SC,
    SD,
    SE,
    SG,
    SH,
    SI,
    SJ,
    SK,
    SL,
    SM,
    SN,
    SO,
    SR,
    SS,
    ST,
    SV,
    SX,
    SY,
    SZ,
    TC,
    TD,
    TF,
    TG,
    TH,
    TJ,
    TK,
    TL,
    TM,
    TN,
    TO,
    TR,
    TT,
    TV,
    TW,
    TZ,
    UA,
    UG,
    UM,
    US,
    UY,
    UZ,
    VA,
    VC,
    VE,
    VG,
    VI,
    VN,
    VU,
    WF,
    WS,
    YE,
    YT,
    ZA,
    ZM,
    ZW,
  ];

  static findByIsoCode(String isoCode) {
    return ALL.singleWhere(
      (item) => item.isoCode == isoCode,
    );
  }

  Country copyWith({
    String name,
    String isoCode,
    String dialingCode,
  }) {
    return Country(
      name: name ?? this.name,
      isoCode: isoCode ?? this.isoCode,
      dialingCode: dialingCode ?? this.dialingCode,
      asset: asset ?? this.asset,
    );
  }
}
