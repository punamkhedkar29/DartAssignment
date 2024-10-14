import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            "NETFLIX",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.red,
            ),
          ),
        //   actions: [
        //     Padding(padding: EdgeInsets.all(10)),
        //     const Text("UNLIMITED TV SHOWS & MOVIES ",
        //         style: TextStyle(
        //           color: Colors.white
        //         ),
        //     ),
        //     Padding(padding: EdgeInsets.all(10)),
        //     Container(
        //       width: 100,
        //       height: 30,
        //       padding: const EdgeInsets.all(5),
        //       decoration: const BoxDecoration(
        //         color: Colors.red,
        //       ),
        //       child: const Text("Join now",
        //         style: TextStyle(
        //           color: Colors.white,
        //         ),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(10)),
        //     Container(
        //       width: 80,
        //       height: 30,
        //       padding: const EdgeInsets.all(5),
        //       decoration: BoxDecoration(
        //         color: Colors.black,
        //         border: Border.all(color: Colors.white)
        //       ),
        //       child: const Text("Sign In",
        //         style: TextStyle(
        //           color: Colors.white,
        //         ),
        //         textAlign: TextAlign.center,
        //       ),
        //     ),
        //     Padding(padding: EdgeInsets.all(10)),
        //   ],
        backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: 1,
          //physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.all(7)),
                const Text("UNLIMITED TV SHOWS & MOVIES ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                ),
                const Padding(padding: EdgeInsets.all(7)),
                Container(
                  width: 80,
                  height: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text("Join now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(7)),
                Container(
                  width: 60,
                  height: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.white)
                  ),
                  child: const Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ],
                ),
                const Padding(padding: EdgeInsets.all(7)),
                const Text(
                  "Made in India",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSnq-f_JS2Pl1RmFj2EvrdF4ZPD6ynaFTJTzFqHYdptj1rOTFXoLO7YfhlFUasCekaH-B0kH1Ie2k9ZpTCsoqxCCQ3TH1SApyskx3qBgmkMog0i_NR7zksy0pCnj5vCQAQj4feSgTE3YqBKE_nwOHDbnpjLVUd6DtgoRONSpV2yLSZqia8PSBJ8xi7wQlKzExsfjtoehvUiOXZDr9XVsqHTdqhSgYXwvAsMG01VJityzmYVnjNrdadYsK9LqRwp3-8fZpagSqFA5uuPuJ46JQbCJwyuo87wvrmarVXQwIsqJnP__AiwHmdr0i50_8qk4w87GNagJe0THWJWe_qex6Rd3rG7luu44TVuH9BJaqLU73EX3NBI.jpg?r=878"),
                            const Text("Sector 36",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa04ZxjLCSuOTfhqAgvq1IiOJgOSCMDerqcO0fN2O1CoFbA7QZvaGNdfHjhAaWcDdrPuQEY9q_BpcC2NXvM_sQ2uxzGgbdyzvEFU873attvdY_Tld6ZAplMH6CAucjNNCiow.jpg?r=dc3"),
                            const Text("Maharaj",style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQY1CJ6Yn7pBHkI7QPMgJ60WC9JJ3S1Y8LhsHUInz3HGJDEWPUH9cEXZoERDveKrm4v4pmTJbZH__DH4ROQUPUc8az8gE3WdwRKGCyEB8H75Uzdtz3ScMvC3ElgOXVZRNout.jpg?r=19c"),
                            const Text("Kota Factory",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTC3EtgbWMT9lOOx3-t2tQz-vf5mFoTA_3Hj41Uo_i-r_0E0Obui7nyjbJuSwmNiKC4whETh7soFT8oh6POmcBssMrDFwTbWnGXHoeLtorhGhEMRftvtqUbbtyS8bTjg_trV.jpg?r=856"),
                            const Text("Amar Singh Chamkila",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABV1D3BFin5nSB90HF5dzTy6n9yHXnyU_YH9t3kdwuUwBHbXoqmtpHKqAfYWOlH2B9p9_EcxFVJkeE0Su0qQMAQLUUUtrIJ6TQpI9IwsVtsLOu6qC7o4eTMt-0M_6ZDKwG3EO.jpg?r=23e"),
                            const Text("Mission Majnu",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRnXCGHV6mju4IywRYdeQMxFayybmjJ89UTn17AgiXr85zd8LxguTJlafjL33yJO9ZkPsz-PUhY_ydkM6_H-BRe4WfWNRAcmPy5fCdnLnN5cF_AZDZ4F1c0GOQPZykpgZAS_i-91yXUkpl-di4crxu3eI9uNewAP2BkzvYYODNhXo3vbqIp22HecQtfKMFY.jpg?r=125"),
                            const Text("Tribhuvan Mishra CA Topper",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABZRAlQ7Jlkc7e84ABWXduW-FqWelwec7UVsMDsQIM2vICPYmwMzfF7-4dWDVv0Kyo0XWEKRJGvig6KgRErjUjCWRzbXGyrV2t2cC3L6ubH9qHx5T-c1l4TbphF1WqN2yLMG4SdSAHantkHfXhTkmYk6vyXXb54G24yoFZifkzx9km1pr3NE4wXOdaPOtwZg.jpg?r=533"),
                            const Text("IC814: The Kandahar Hijack",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRyj6fh1HXIp0PeqHNK00MICNkWoKRfWdc6WhO_yEULQYyHXRSQ-6jMrqfxQKcfaorDtwOPgHinYsTRPAJ4xGppUVgfYN9l6pLVgtODwcce1IyPj0rfySHCnNkUzw6_8QGhVOp58Neji2DfqdSqrQpyLtSEK7piz7ZR8u5SfxuqM8nANKVjPOE7ih92vjMjngw916qZ_Suf-NS6SflhaEl8eBrLpG-ipdusJE5g5hioS2RbfRluVDDJab-Nms5dKhw1otU1ZgmMGFnVG5X2rxaUIOKPpRRUz4S8uKPyHtiOyolQJY3M98E6bVihBBsXjlkRl2R2rA4pJbhFlxNfATgIb7O2pZu3YGvnrCF4PaNvPQg.jpg?r=155"),
                            const Text("The Great Indian Kapil Show",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUH8NFZMMoPr4JHVJVTz0t8ZY3IKkRwitkL5wRWonK7zgc8Olm1rho7z8f0uIzkMcZmi6R8G4JLil1c3qM4UhfZ2EeRvrRGxkyX7vzbu4dynk5YVXTd4LUbrEeNsr7sSySHG.jpg?r=66f"),
                            const Text("Heeramandi",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQR0Zi3Pc4wdi42yspIE04SM2FqquCJ2Acrktnv4pSttcrDdHmqPIeaVfWmJ7mFCCCwGaFXs7cIqJa3_T4FPi63o_GJommkWJ69ZAUIvyM2-8PzfaCLfM8XcaXkF7e_oSQ4y.jpg?r=7f2"),
                            const Text("Jamtara",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Romantic TV Shows",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRxSaN4hm8I8m1KG-PPeVowujd-NvDHkoYysnOkrlJyUPMf4fpqDL2PT0qgoItoXal6y_2AnNxYi7dgoFbVCSbDK7URY3uM1V33EFlweszW-zKIaHGvaatKo6q7jlxB5cNm6BDaqNEXIP-hs77FRWD9zFxc0o4-ZSt_Dj3JxoThSbcwH47fJtetv9Eh3U44SpMlqlItiUkvMOLqcUdDGo5WccwTm6dOkYvXOaS7gzKPKtYrpJO7v-ff9rSX8sEjXql9qOGykq4IuQ4taHViaVWBrDtBuJPBpeNDezPXuJn5n19_atW-0xqAo5V3rIaLP1HmrDwsxYOuvzLYONbWku9CEzxuUYHW5PpfZpeGSvovqpVId-VLylsZ7xfGZtKnx72k2C_c0q-6QatMJ11cFmzlKlINKSVCublEPeDASNvba5spvtgXzDxNq_5G-aB6lo4ijBqoGSvKw4eh_sduQTZB5DW34_h8eA3FZk0_T460GDcIosket3z-ESRU8ALg1Jos.jpg?r=c18"),
                            const Text("Love Next Door",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABauaf_pjBXX9G_dl-IYBIWLYWexsTpaSGU0ulKaCMLmsn_ew6nmLGev9nFJJ7bRDMaKAGE0G2Egdgy30VgHbVI7c0-IeOxmMp5j-0AoMIuToZbPzDmGzCQjZIN_OLvtEARjE.jpg?r=3e4"),
                            const Text("Queen of Tears",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcg9TuSaELytTMpfLNBbxPokSI47FYpoWXi2vbAvluwsIXZAQ_M2mBc6BoAfjahHiZGrJzGmCwBxfwNG_JYhQZ7Q5O_5UjdousyT7iLkqOFlzgNy1L2hZNDEeYKXfYw-GOw9.jpg?r=b69"),
                            const Text("King the Land",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdJK-Y7YBZvAAOWBUuzMOS5AFpfOqsFeqPp4JvBkzKMhVL09KnYB0uYo-3Rk7FPCcuXgnMHgjSg_4Z-8NkZycCDe7ktTvU3hzg_mFdjC8WREOD4XQLdiQjktNZRPoclxWkh0.jpg?r=fbf"),
                            const Text("Hometown Cha Cha Cha",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                      
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa6R0zawmvBIlpRMxH9N2cD-aKWcmyqM8q3d_u41QnzVuaTgU8vxi1cWa4Q5oLSVCRjVDIoC0opTfZO_s-hyMzZl1_8PGK449ohLgy9CvPNXpKKkgCeta667RBPXODjZ2UWr.jpg?r=095"),
                            const Text("Business Proposal",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQDpT6t8mS6Bent2_DvrUxLtm_sov8E2N7qazbGw6iISJLJh1LnGOJKOzi6fY5gxCqzu8tmDIKZ3I3Po5e6jKRYjIC2N1Ahs76BHqWgeTUV-3JNMvKwq1KfxjoW3E48X3LZe.jpg?r=44c"),
                            const Text("My Demon",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVOtMelnp5zq5dhD28ZWxmxMUbij22WoPh3_Mjbbn_RmtdWzRLj4XSMetDsmYcHWFyQTjTTSXl5Bt3bFinGdJCUTX8ySMEPAjgw.jpg?r=c6c"),
                            const Text("True Beauty",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSitjBhxTkmKXKaLTESIa5iQ58nAyggjQUOYupjSwRe4gUR-_YAITsOHD6tTTZNuBfh0ssBesZYcvf9X7kTOjYj9LklBcD2gEr8rFmNxUtSBec4jGBl4Faf5hCl09TqioZr0.jpg?r=c8b"),
                            const Text("Vincenzo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdOdSuAwEvu_jZKZr4g_GHiP3YpfGSkqDi5yisAEpNVwAv-raxL1fcezQZn4aEu7ixtzlsbRg2GlY2_dkqo9QJyaJgz0Qkr1tH76wgOK9ulsSgZDe_QhgqxBTPeTJgIRGGSI.jpg?r=d40"),
                            const Text("All of Us Are Dead",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABWJrYB_PTHdpNMIwBeszzs4d5Qe4GyIlXOoyQhA0pvhLkYUk-yDw2s94PwpKEAAHshonNEXTwLnW9hVHJPEgN-1r2aGO-ZHN4qXPnOhkSI7_oOeLSxNLzEtkZNqd3os0qI_P.jpg?r=141"),
                            const Text("Extraordinary Attorney Woo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "US TV Shows",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABS1WSqsKT1OPiv9riD6Uf0NTpOh7PN96C5IuFzBIDLw_V4jKvDfr9H3H-JfuWQ_G-Q9R41dHJSDyLvKpWCJkGlyPU1TTyS9MulE.jpg?r=1fc"),
                            const Text("Friends",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcfPkG9xHOXVTkr_yR22dlRYCQjHpX1lhUNk8SCcIiXzTW54jA9001U-6xvUQUkuq2083BONG4yBds_ySDLdshoCQTrdtkFTpgw.jpg?r=f5a"),
                            const Text("The Vampire Diaries",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfyfO998JNWAx6snVHf7_ydlwuk8I1tPQCttH_W4OCzmhkWufyFODQaEnnftder7T2geYuzZuznJiFtGd8GxlgCATqrUxV8CkgdJkuyboFlkdXKsAmUwSH4kB8UeD0NT7SVp.jpg?r=fb2"),
                            const Text("Never Have I Ever",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVjuYdYgeqvdxPMm6joLqv1Vyq3mMFdTydYHET1kztLpldN5lhE6qxLyO2MOUvW2cMKBqiuEDmp7DkGiTMqozfwKYNxYrruNExo.jpg?r=4ca"),
                            const Text("Suits",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc_QuOdHzJa9WwBiBlfEvpcFRKq9TAIgdJv0KoSilQZ8JMEsdCdQS4VGD6gwVg2CYCYNhTJIald5uVsXbMf-3QaF1k1fnFRbovQr6ddWUtkSOUzil_dtlD1wOIeD_pSI6pAx.jpg?r=c68"),
                            const Text("Stranger Things",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABV9sdYXLOrugkozo0zJXMKDX5mSWERNfAtd6KLKaoITheCb0sKLJ9gHSg3E9myQv8l79JoPFv6LAVkrFBJYih2KQyY9FmIc0rCkZCceFBQTieeQ0OO1yUq9QZaNjyysasoZoVUYHSf-NvSjxjVNYTa6RHNSufWnVfIs3QB2Rxgpu3VBPoaB7HYrCVECwiniwB1kPoCdBcuxk324jSKxQzGbqKhK83HPEGvMT_BTibaD-MDpi3V5tc4FqFqSATTFapfufGk6K8sQLlGSe_Gk6iLw7nlD-9TNynNXDeT5Jxwp-82kiBayCoax3KMxSapu_suk40sME0f7mAq-uRF9dsC50Es5ZFSH-wAAFgP_g4y6CqQ.jpg?r=450"),
                            const Text("Outer Banks",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc5URtqG36cHmUzXPrn9qaN1prCdZB3Llrhe8w4fvPKUxMp1phgN738mP1ctTe9QshMH8f0NlK-GdSAZDYJpXtvofUffd8o4BQuB7AKZogG-KbG0kR5H5w9kp3pXbogjGHSN.jpg?r=082"),
                            const Text("Wednesday",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),                      
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfs1djP8b2Vh7ZxtdDBlxo95LAcA11SMdWDsjUKAGawvmsguEnVs15dCDUVxLUZwFJDlTNDDUCxfqvyN-lbOgH08c2fGXNKir-hUbWir55Gi2SSIrsQBMMhxmhhwqY4MLYTs.jpg?r=1d3"),
                            const Text("Ginny & Georgia",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABUmLgKmFrl2Tq5jDmIBIdp-L6_fRFsTE7KslWARHa4Yb8f8q32MOBiACOoYAGFn4k8Pc_1P7QlN-F41Btkx4q8bp2gg0yA4kCWxamkIcyRVtyIoln6PDWQVi1_IAZHe4PALj.jpg?r=326"),
                            const Text("Money Heist",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVJ3Al_ndC7zuyebhf8XAIOyXLG6W0OoLmmHpq7x-n2RXkKEQ5bE00TgubEJm03zziF7YxTBv7Fm95FBaFlaOHBdyciiovdwY4WtfzhOzz9RmH6ktHr7Fu1H7yiDz67aItcCqQY6s-AlMbkmXTL9gzgy-hrYgg-PmDdFz8OJYE7nv0t-TgaFtHrl9yugAUdFHs8rTeElU5QaWITrqyiYwKBbT1gTpMFVHCcPMO2T344GQvNRNdxiXGd0DWHuURieD9qYNSqZqnfHNo7XtxihRj0.jpg?r=563"),
                            const Text("Young Sheldon",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Anime Series",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABaCC0LmSovKE1ji0XhC4EGzgtyg2QsG-iDKZ-5X7afHqX-leCm-WLoE0FLE921rKEmqu9hXMfblFBZhSAcmgh-srjL6BA2RwWJs.jpg?r=888"),
                            const Text("Haikyu",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdymiiM1WwGG04uiwVF4hhPSEo1--XjB8Asi1KbB9PihA3-V1qVJmPoqVdZi9DTWTw-dj0q0RB6rgbYGlkVLLTZxduy-CK2r08AqziO1e6w-OUpFTp4GAVyGbfPnIcYsQCX2.jpg?r=19b"),
                            const Text("Rising Impact",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRWEloAcZAXXIkUAe8mjfgvGBKkZZ1AMOsyEwWIUxQtdqJsU3TdmBo1n8WwESdVCiXoJ6cAdZWRwtg8d9tqkGqTQtOLnGfjXShE.jpg?r=932"),
                            const Text("Jujutsu Kaisen",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABVDSEjcgEbYI5bjTK4mO-qoxnjCxgNCVUJnwt-1ORJ_5-p3G3UE_5pLYEtbeFKZHuRllsyX1LaNOYcoYRixTSdgWIPNnK-YZBic.jpg?r=0f0"),
                            const Text("Black Clover",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABXuS-ssXUJU_okgOceKSoKKScweq3iLZ6BE6spjeKnvf1pUICqr8fUMamP7sfC3w-wdZx6-aZCBsRxIDRH26V8I09P-5He30OTs.jpg?r=d41"),
                            const Text("SPY x FAMILY",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfojdskBMfb8a8lm0dKM_P0ghIF8L1WtoDqYQNqvoHbItnzlqyZJTN9ESIE2RoGVBFsbNBWwATpGvA9OgzJ-_-SozuNypR1MP5I.jpg?r=93f"),
                            const Text("Naruto",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABe1V28EGKFNQk_H1E-6xKVRHRNX6W-CgRlYP4LDFoqbjalTeVFN2L-TNT-jYihtUxVrjdj5_Ri8eyk33Y57D_gxOoxzYLutVlDI.jpg?r=b74"),
                            const Text("Dr. Stone",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABfNQf2wEqmt7xMMU7mEQYsaJFO3xO5aQwJ3kWhr6D2Ztnk1qB15mZZpcKck-89m-fhqwrayYkdcUdz5F0LRGcv8W3Ex_iAwO-AY1buZidGsVgPDjmELR5bRn7LLU5ggnYlS_8Fzw72JF6T4qOt9F-ANLXnRYZECs-AL04_g2h-9ugKyf-3OVP4m56lnfASSDSzoM7bByeXpCV6i5rty8KcVEyR_pP05GfM5yMedT_W_czCDDsFC67DTf7ZpZbV38VAU3I5QfJerSbiuQQHQzhphXcA.jpg?r=7cd"),
                            const Text("Blue Lock",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABX_vF60Zrhap3uMJ5fl1BjJPUhxx2djlEJfEhtDxfAJsJozZUhGKWJJD-yb0nsYVXMEDK5zptIk76Hy4Ww8rW1ebLfgx0jGQwAItCFRfGefv3jjtqJVCCajzLd-ODcAlnOFh.jpg?r=139"),
                            const Text("Lookism",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTAxC8TRWYJu2jnPt9HB6sJp4QrjYtrS-Q4oJlHr-4au_2gDcn6HDZGXi9DquW6CJOoeK4njqWhl-Q3UCOM8OGH-FadFqGMHAWs.jpg?r=2b7"),
                            const Text("Fruits Basket",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                const Text(
                  "Comedy Movies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABbjWrrAgshacgx4Gxwz634Jo44u7gS3FYfJn-YIo3BCcYFyGep3-0T-IGSs8lST-V-fsqdU1BYLOgILioweDaZBsPl4hhHGy96cXHMbAHpcDozZGSWhR-4vAmuvwRejUfI8e.jpg?r=c84"),
                            const Text("Darlings",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSTTFsy67imvZjqhjagGbePIEfZEX4om_XGu6P6WJoDp4Z74BjWnNIozK94hZUnDdNTwVUbOZkNeXOrdq2uPUAfWOrawho5DZhYWdMmLRkvsgMxy7vjetJSI94WVL8KPlf8H.jpg?r=fb9"),
                            const Text("Wild Wild Punjab",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcbizvvobKDYX8kPDrbj_h0cMcBSS-XqY7gWLX4DFoqyRoqZe2MsZzPXhNZ-61YPTTvP9UYXkyu6r30aZq59_RM9Xc1RNUklLtmCw4PLxCTPXHcHY-L7YpGQytr6UxOj7PtB.jpg?r=650"),
                            const Text("Leo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdSP_TBZRZO7Siqz0q6dXfDELBbkeNN0xBuoz3DqdrZjTZ7TIjyaArksghAUAC2VgpSZZg08ot7a79GcYnWh6aFg303gEMrJHi_Vir552xyQqb8oSuEG0rWBKrS69bnqTtif.jpg?r=5d9"),
                            const Text("The Monkey King",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABT07HA9ruyg-17xhsl4QUOvRM8PdL2zo7tEXDGEc3A0wSSWHGcGpMhqAR9h82IR182EO0VxEjTzHAy63Oh22B2dg839fgY66TR8VVvKvmisgZl6Id63g-GiC2YzOpEQE-wDm.jpg?r=cc7"),
                            const Text("Jaadugar",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSfcc3kvh29G4AeNm3OBpOtKFfQCoD1hzwbUTr3fmCZYgPSZNhKUf1PItuzrMqwj4D52jrW_wPFBeJSO38h89tGfx2roIhnDWZiOeOYStDzUZtG6Ewe2Vuop6ifmD9w_PpZa.jpg?r=600"),
                            const Text("Ginny Weds Sunny",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),                       
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcaCLxxZgrbgmWejmGOYHCB2G2Dq57cUrDSkY-xa0LS7fkigpqa8pkjMzE63dwGG0FNOP9Jn45i8dhGOcBii_7P-C-ig9dKpuvj_ZaaFzpXxtGhcN48c8uQV1m996zlXUJHY.jpg?r=5ad"),
                            const Text("Chopsticks",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),                      
                        child: Column(
                          children: [
                            Image.network("https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABc7bcMVZKrzcqmwWIIjn0RCVDWtYmoHYWzz7SxKza4o0o_CU3I0roAsdjlbmXagjRGhp-RuvEzuJBNnBJQtNrhK0LSqBwMP4ExDyoEh7hJuMduywSTt8u6iva7S1kOKiLlgQ.jpg?r=ef2"),
                            const Text("Friday Night Plan",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            );
          },
        )
      ),
    );
  }
}
