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
        appBar: AppBar(
          title: const Text(
            "NetFlix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
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
                const Text(
                  "Made in India",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABSnq-f_JS2Pl1RmFj2EvrdF4ZPD6ynaFTJTzFqHYdptj1rOTFXoLO7YfhlFUasCekaH-B0kH1Ie2k9ZpTCsoqxCCQ3TH1SApyskx3qBgmkMog0i_NR7zksy0pCnj5vCQAQj4feSgTE3YqBKE_nwOHDbnpjLVUd6DtgoRONSpV2yLSZqia8PSBJ8xi7wQlKzExsfjtoehvUiOXZDr9XVsqHTdqhSgYXwvAsMG01VJityzmYVnjNrdadYsK9LqRwp3-8fZpagSqFA5uuPuJ46JQbCJwyuo87wvrmarVXQwIsqJnP__AiwHmdr0i50_8qk4w87GNagJe0THWJWe_qex6Rd3rG7luu44TVuH9BJaqLU73EX3NBI.jpg?r=878"),
                            const Text("Sector 36"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa04ZxjLCSuOTfhqAgvq1IiOJgOSCMDerqcO0fN2O1CoFbA7QZvaGNdfHjhAaWcDdrPuQEY9q_BpcC2NXvM_sQ2uxzGgbdyzvEFU873attvdY_Tld6ZAplMH6CAucjNNCiow.jpg?r=dc3"),
                            const Text("Maharaj")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABQY1CJ6Yn7pBHkI7QPMgJ60WC9JJ3S1Y8LhsHUInz3HGJDEWPUH9cEXZoERDveKrm4v4pmTJbZH__DH4ROQUPUc8az8gE3WdwRKGCyEB8H75Uzdtz3ScMvC3ElgOXVZRNout.jpg?r=19c"),
                            const Text("Kota Factory")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABTC3EtgbWMT9lOOx3-t2tQz-vf5mFoTA_3Hj41Uo_i-r_0E0Obui7nyjbJuSwmNiKC4whETh7soFT8oh6POmcBssMrDFwTbWnGXHoeLtorhGhEMRftvtqUbbtyS8bTjg_trV.jpg?r=856"),
                            const Text("Amar Singh Chamkila")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-3241-2164.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABV1D3BFin5nSB90HF5dzTy6n9yHXnyU_YH9t3kdwuUwBHbXoqmtpHKqAfYWOlH2B9p9_EcxFVJkeE0Su0qQMAQLUUUtrIJ6TQpI9IwsVtsLOu6qC7o4eTMt-0M_6ZDKwG3EO.jpg?r=23e"),
                            const Text("Mission Majnu")
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
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRxSaN4hm8I8m1KG-PPeVowujd-NvDHkoYysnOkrlJyUPMf4fpqDL2PT0qgoItoXal6y_2AnNxYi7dgoFbVCSbDK7URY3uM1V33EFlweszW-zKIaHGvaatKo6q7jlxB5cNm6BDaqNEXIP-hs77FRWD9zFxc0o4-ZSt_Dj3JxoThSbcwH47fJtetv9Eh3U44SpMlqlItiUkvMOLqcUdDGo5WccwTm6dOkYvXOaS7gzKPKtYrpJO7v-ff9rSX8sEjXql9qOGykq4IuQ4taHViaVWBrDtBuJPBpeNDezPXuJn5n19_atW-0xqAo5V3rIaLP1HmrDwsxYOuvzLYONbWku9CEzxuUYHW5PpfZpeGSvovqpVId-VLylsZ7xfGZtKnx72k2C_c0q-6QatMJ11cFmzlKlINKSVCublEPeDASNvba5spvtgXzDxNq_5G-aB6lo4ijBqoGSvKw4eh_sduQTZB5DW34_h8eA3FZk0_T460GDcIosket3z-ESRU8ALg1Jos.jpg?r=c18"),
                            const Text("Love Next Door"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABauaf_pjBXX9G_dl-IYBIWLYWexsTpaSGU0ulKaCMLmsn_ew6nmLGev9nFJJ7bRDMaKAGE0G2Egdgy30VgHbVI7c0-IeOxmMp5j-0AoMIuToZbPzDmGzCQjZIN_OLvtEARjE.jpg?r=3e4"),
                            const Text("Queen of Tears")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcg9TuSaELytTMpfLNBbxPokSI47FYpoWXi2vbAvluwsIXZAQ_M2mBc6BoAfjahHiZGrJzGmCwBxfwNG_JYhQZ7Q5O_5UjdousyT7iLkqOFlzgNy1L2hZNDEeYKXfYw-GOw9.jpg?r=b69"),
                            const Text("King the Land")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdJK-Y7YBZvAAOWBUuzMOS5AFpfOqsFeqPp4JvBkzKMhVL09KnYB0uYo-3Rk7FPCcuXgnMHgjSg_4Z-8NkZycCDe7ktTvU3hzg_mFdjC8WREOD4XQLdiQjktNZRPoclxWkh0.jpg?r=fbf"),
                            const Text("Hometown Cha Cha Cha")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa6R0zawmvBIlpRMxH9N2cD-aKWcmyqM8q3d_u41QnzVuaTgU8vxi1cWa4Q5oLSVCRjVDIoC0opTfZO_s-hyMzZl1_8PGK449ohLgy9CvPNXpKKkgCeta667RBPXODjZ2UWr.jpg?r=095"),
                            const Text("Business Proposal")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRxSaN4hm8I8m1KG-PPeVowujd-NvDHkoYysnOkrlJyUPMf4fpqDL2PT0qgoItoXal6y_2AnNxYi7dgoFbVCSbDK7URY3uM1V33EFlweszW-zKIaHGvaatKo6q7jlxB5cNm6BDaqNEXIP-hs77FRWD9zFxc0o4-ZSt_Dj3JxoThSbcwH47fJtetv9Eh3U44SpMlqlItiUkvMOLqcUdDGo5WccwTm6dOkYvXOaS7gzKPKtYrpJO7v-ff9rSX8sEjXql9qOGykq4IuQ4taHViaVWBrDtBuJPBpeNDezPXuJn5n19_atW-0xqAo5V3rIaLP1HmrDwsxYOuvzLYONbWku9CEzxuUYHW5PpfZpeGSvovqpVId-VLylsZ7xfGZtKnx72k2C_c0q-6QatMJ11cFmzlKlINKSVCublEPeDASNvba5spvtgXzDxNq_5G-aB6lo4ijBqoGSvKw4eh_sduQTZB5DW34_h8eA3FZk0_T460GDcIosket3z-ESRU8ALg1Jos.jpg?r=c18"),
                            const Text("Love Next Door"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABauaf_pjBXX9G_dl-IYBIWLYWexsTpaSGU0ulKaCMLmsn_ew6nmLGev9nFJJ7bRDMaKAGE0G2Egdgy30VgHbVI7c0-IeOxmMp5j-0AoMIuToZbPzDmGzCQjZIN_OLvtEARjE.jpg?r=3e4"),
                            const Text("Queen of Tears")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcg9TuSaELytTMpfLNBbxPokSI47FYpoWXi2vbAvluwsIXZAQ_M2mBc6BoAfjahHiZGrJzGmCwBxfwNG_JYhQZ7Q5O_5UjdousyT7iLkqOFlzgNy1L2hZNDEeYKXfYw-GOw9.jpg?r=b69"),
                            const Text("King the Land")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdJK-Y7YBZvAAOWBUuzMOS5AFpfOqsFeqPp4JvBkzKMhVL09KnYB0uYo-3Rk7FPCcuXgnMHgjSg_4Z-8NkZycCDe7ktTvU3hzg_mFdjC8WREOD4XQLdiQjktNZRPoclxWkh0.jpg?r=fbf"),
                            const Text("Hometown Cha Cha Cha")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa6R0zawmvBIlpRMxH9N2cD-aKWcmyqM8q3d_u41QnzVuaTgU8vxi1cWa4Q5oLSVCRjVDIoC0opTfZO_s-hyMzZl1_8PGK449ohLgy9CvPNXpKKkgCeta667RBPXODjZ2UWr.jpg?r=095"),
                            const Text("Business Proposal")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABRxSaN4hm8I8m1KG-PPeVowujd-NvDHkoYysnOkrlJyUPMf4fpqDL2PT0qgoItoXal6y_2AnNxYi7dgoFbVCSbDK7URY3uM1V33EFlweszW-zKIaHGvaatKo6q7jlxB5cNm6BDaqNEXIP-hs77FRWD9zFxc0o4-ZSt_Dj3JxoThSbcwH47fJtetv9Eh3U44SpMlqlItiUkvMOLqcUdDGo5WccwTm6dOkYvXOaS7gzKPKtYrpJO7v-ff9rSX8sEjXql9qOGykq4IuQ4taHViaVWBrDtBuJPBpeNDezPXuJn5n19_atW-0xqAo5V3rIaLP1HmrDwsxYOuvzLYONbWku9CEzxuUYHW5PpfZpeGSvovqpVId-VLylsZ7xfGZtKnx72k2C_c0q-6QatMJ11cFmzlKlINKSVCublEPeDASNvba5spvtgXzDxNq_5G-aB6lo4ijBqoGSvKw4eh_sduQTZB5DW34_h8eA3FZk0_T460GDcIosket3z-ESRU8ALg1Jos.jpg?r=c18"),
                            const Text("Love Next Door"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABauaf_pjBXX9G_dl-IYBIWLYWexsTpaSGU0ulKaCMLmsn_ew6nmLGev9nFJJ7bRDMaKAGE0G2Egdgy30VgHbVI7c0-IeOxmMp5j-0AoMIuToZbPzDmGzCQjZIN_OLvtEARjE.jpg?r=3e4"),
                            const Text("Queen of Tears")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABcg9TuSaELytTMpfLNBbxPokSI47FYpoWXi2vbAvluwsIXZAQ_M2mBc6BoAfjahHiZGrJzGmCwBxfwNG_JYhQZ7Q5O_5UjdousyT7iLkqOFlzgNy1L2hZNDEeYKXfYw-GOw9.jpg?r=b69"),
                            const Text("King the Land")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABdJK-Y7YBZvAAOWBUuzMOS5AFpfOqsFeqPp4JvBkzKMhVL09KnYB0uYo-3Rk7FPCcuXgnMHgjSg_4Z-8NkZycCDe7ktTvU3hzg_mFdjC8WREOD4XQLdiQjktNZRPoclxWkh0.jpg?r=fbf"),
                            const Text("Hometown Cha Cha Cha")
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 150,
                        width: 200,
                        child: Column(
                          children: [
                            Image.network("https://occ-0-1007-1009.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABa6R0zawmvBIlpRMxH9N2cD-aKWcmyqM8q3d_u41QnzVuaTgU8vxi1cWa4Q5oLSVCRjVDIoC0opTfZO_s-hyMzZl1_8PGK449ohLgy9CvPNXpKKkgCeta667RBPXODjZ2UWr.jpg?r=095"),
                            const Text("Business Proposal")
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
