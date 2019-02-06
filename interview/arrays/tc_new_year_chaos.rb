require_relative "new_year_chaos"
require "test/unit"

class TestNewYearChaos < Test::Unit::TestCase

  def test_simple
    assert_equal(3, NewYearChaos.new.minimumBribes([2,1,5,3,4]))
    assert_equal('Too chaotic', NewYearChaos.new.minimumBribes([2,5,1,3,4]))
    assert_equal(4, NewYearChaos.new.minimumBribes([1,2,5,3,4,7,8,6]))
    assert_equal('Too chaotic', NewYearChaos.new.minimumBribes([5,1,2,3,7,8,6,4]))
    assert_equal(7, NewYearChaos.new.minimumBribes([1,2,5,3,7,8,6,4]))
  end

  def test_big
      a = [2,4,5,3,1,8,9,7,11,10,13,6,15,14,12,18,17,16,21,20,19,24,23,26,27,22,29,25,31,32,30,28,35,36,33,38,37,34,41,39,43,44,42,40,47,48,45,50,49,46,53,52,51,56,55,58,57,54,61,62,60,64,65,63,67,66,59,70,69,72,71,74,68,76,73,75,79,78,81,77,83,82,85,86,84,80,89,90,87,92,93,91,88,96,95,94,99,100,97,102,101,98,105,106,104,108,107,103,111,109,113,112,110,115,117,116,119,114,118,122,120,124,123,126,127,128,121,125,131,130,129,134,132,135,133,138,139,137,136,142,143,144,140,146,141,148,145,150,149, 151,147,154,153,152,157,156,155,160,159,158,163,164,162,161,167,165,169,170,166,172,173,171,168,176,175,178,177,180,181,174,183,179,185,184,187,186,182,190,191,189,188,194,195,193,197,192,199,198,201,196,203,200,202,206,207,205,204,210,209,212,208,214,215,213,217,216,211,220,218,222,221,219,225,224,223,228,227,226,231,230,233,234,229,235,232,238,237,240,236,242,243,239,245,244,241,248,247,246,251,249,250,254,253,256,257,255,252,260,258,262,259,264,265,261,266,263,269,270,268,267,273,272, 271,276,275,274,279,280,277,282,283,284,281,278,287,285,289,290,291,288,286,294,292,296,295,293,299,298,301,297,303,300,304,302,307,306,309,305,311,308,313,312,314,316,310,318,317,320,315,322,321,319,325,326,324,323,329,328,331,330,333,327,334,332,337,336,339,338,335,341,343,340,342,346,344,348,349,345,351,350,347,354,352,356,357,355,358,353,361,360,359,364,365,363,362,368,369,366,371,367,372,370,375,374,373,378,377,380,381,376,383,379,385,386,384,382,389,390,388,387,393,392,391,396,395,394,399,397,401,402,398,404,403,400,407,405,409,406,411,410,408,414,413,416,412,418,417,419,415,422,421,424,420,425,423,428,427,426,431,432,429,434,433,430,437,436,435,440,438,442,441,444,445,443,439,448,449,447,451,450,446,454,453,452,457,456,455,460,461,459,458,464,462,466,463,468,465,470,471,467,473,472,469,476,475,474,479,477,481,480,478,484,485,482,487,483,489,488,486,492,493,494,490,496,497,491,499,495,501,498,503,500,505,506,507,504,502,510,509,512,511,514,508,516,513,517,515,519,518,522,521,520,525,526,524,523,529,528,531,527,533,532,530,536,537,535,539,538,534,542,541,540,545,544,543,548,546,550,547,552,549,554,555,553,551,558,557,556,561,560,559,562,565,564,563,568,569,566,571,572,567,574,573,576,570,578,577,580,575,582,581,579,585,584,587,583,589,586,591,592,590,594,595,588,593,598,597,596,601,600,599,604,603,606,607,602,609,608,610,605,612,611,615,614,613,618,617,616,621,622,619,624,620,626,623,625,629,630,627,628,633,632,635,634,636,631,639,640,641,637,643,638,645,644,642,648,647,646,651,650,653,654,652,649,657,656,655,660,658,661,659,664,662,666,667,663,669,670,665,668,673,674,672,671,677,675,679,680,678,676,683,682,681,686,685,688,684,690,689,692,693,691,687,696,694,695,699,698,697,702,700,704,705,706,703,701,708,710,707,712,713,709,711,716,715,718,714,720,719,722,723,721,717,726,727,728,729,724,725,730,733,734,731,736,735,732,739,740,737,742,738,744,741,746,743,748,745,750,747,752,753,751,755,749,754,758,757,756,761,760,762,759,765,763,767,768,766,764,771,769,773,770,775,776,774,772,779,780,778,782,777,784,783,781,787,786,785,790,789,788,793,794,792,791,797,796,795,800,798,802,801,804,805,799,803,808,807,806,811,810,813,814,812,809,817,816,815,820,821,822,819,818,825,824,827,823,829,830,828,826,833,831,834,832,837,835,838,836,841,839,843,840,845,846,844,842,849,848,847,852,851,854,855,853,850,857,859,856,861,858,863,860,865,862,867,866,864,869,868,872,870,874,873,871,877,875,879,878,881,876,883,882,885,880,887,888,884,889,886, 892,891,890,895,896,894,898,899,900,897,893,903,902,901,906,905,904,909,908,907,912,911,910,915,914,913,918,919,916,921,917,923,920,925,926,924,928,927,922,931,932,930,929,935,934,933,938,937,940,936,942,939,944,945,941,947,948,943,950,951,952,949,954,946,955,957,953,956,960,959,962,958,964,963,961,967,966,965,970,971,969,968,974,973,972,977,976,979,980,975,978,983,982,985,986,984,988,981,990,991,987,993,992,989,996,997,995,994,999,998,1000]
      assert_equal(1142, NewYearChaos.new.minimumBribes(a))
  end

end
