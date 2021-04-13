import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:/google_sign_in/google_sign_in.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {
            FirebaseAuth.instance.signOut();
            _googleSignIn.signOut();




          }),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVEhgVEhUYFRgSFRgRGBIYGBERERERGBgZGRgUGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISGjQhISE0MTQxNDQ1NDE0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTE0NDQ0MTQ0NDQ0PD8xNDExNP/AABEIALoBDgMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQMGAQIHAAj/xAA4EAABAgQDBgUCBQQDAQEAAAABAAIDBBEhBRIxBiJBUWFxgZGhwfAysRMjQlLRBzNy4RRigvEk/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAIREAAwADAAMBAAMBAAAAAAAAAAECESExAxJBIjJCUWH/2gAMAwEAAhEDEQA/AMMUtEMx6nDlznpkbwh3BEvKgeUDED1C4qSI5DuesK2YiOULXHMt3lRN1RROh/h79E4Y9I5AptDKyAHMcsRIiia5RRXrVwyCoDrphDclUsUyY00vZaXgzWQgOWS8DUgJXMzTh9Jtz/jmks9MxGnPXMNMpsPCiz8n+G9PrLZ/yGfub5hTQ3g6EFVWVmC4Aig7UTqVmqChISLyYYXCaGoWVHCjg6eiJaQdVReRCuGgd5S2ddZNI8IgVFwkc8SnzkTgomHXQymfcpjh2AxYt2toP3GwREPSATjO1rak6XTCW2aDW7z6noLILFcLcxhocyFJhk59tLiGeIeQSdpU2J/3DXmoAVsiPpl5Vk2FZWKe3uqy4q3bBD8xx6D7oPg09OkMhqKblWvbQhEsK2eFOi6YpOHsLMrmhVOek/w3lvDh2V7iNsq3tBC+k9aJE9hayinMcpg9BscpQ5UK5JnvQ73LDnKF71gNmkZ6FzLaK5RNWQrZIStGG62K0YboiUO5BNmFKsOunUOAVhTBchnOJdQdkXFgmiNwfD6AxHjo33KV70MtBEpKhoFdaeS3jtqPnyqlcfD5qonv4BIxkBx4QAqaW5/S0cz8ulk/D/Lvx0Gjj16J29raZnaNuBwrz6lKJgOcC8ihIIYLmgPE9Ty/lKxhThkYtcR6WTeHN3pXwIAP3SGMws5g8/E2RkpEqRW/Ogv5Iv8A0yfws0s61RftdMoDykEq6hqOP6h9iPngnkvErqB3H8IBGEJ/P/SAxXDqtLmeI9wjoY8QjILa25qsMleCvYBgeZ2eILA2HNW9jA0UAoBwXobA0UC2XTKwc7eTyFxBlWHsi0POfQey1cMunDdoWUjvH/YpbVM9oz/+h/8AkUrKmgPptVXDYJu+7wVNV5/p6z6j1CD4NH8jocMWWHvU7GqGYhqdJ40XTTZoTVK8Sg5qDkUxAog5rVSWSmDl8NSgKBjlMCrBMOQ8RTPcoHFYxA4LACy8rQlEQ3cVA3VbucsQ/qCyJ0WnAoFgSrK1gASDBXWCfhqRsKPMgZ3ho4nyHNNIwAGUWDBTohsMh0LnnhujuVDNx6vLRo036uTTwDPRL34cOvVDk0ufBSZ6ntZQxHV7BJQ0s1cc2ugvT3KW4jMhovq47o4nr26qWJFqa1o0VIHF1NXHp90imS6JEqdPbRTRU1u81J4AjS4p8t1UsFrQeI7VI8tQvQpYt4dUfLStTzRyjKQyRYdQa/fvVO5VqVy7MpHl1800l3//AHksgsZQwmco2yWwSm8uN1X8S2Q8j0SLKwvLpOcyhZ19GEnkiUDip/Ld2S1wM9OH42+sZ55uP3QAKKxQ1iO/yKDDSpivpsSuh/09Zuk/9vZc9LRzXR/6fD8s/wCXsEGUhbL6xRxTdbBBTj3A2S09FZWWSuolM+81tzRLC/io48OqjnJZLByzRZD16OKIVz1VC5wEueoXuUReonvRwD2N3vWmZQuesB6wuSVxXobrqMvXmuuiidMtmCR1aIb6hUbCY1HCquUnEBoOdkjQUxsx2SHXk0xKcybNH380nDiNTUk1P+RufX7JpMvGUnqGtHYUHlSvilMw6m6LkivSnU+XgiFbN2RLfNOfionxgQandBoeb3ftCXxY/CtuLufQICZnSbN7ADQf7SVseVgLmI+Ykc7GmnQDpb0REKAKAoORg110HqU8gQ7KNdOiVo8yWDmjmFmHByn5ZFQ2kIl8IObZZGYOyGCp2Np81UTDQ0KnOidIRhEtFoaeSeyr6hVcP4HXgU3wuY4Hh6qvjrDJeScocLy8vLrOU8luNupCd2TJKdonUgu7H7JK4MunDcQNYju5Q7e63nHb57qAOSCMIz/9vCi6VsB/b/8AR9lzAPXTNhHflDuUtFI6XppUEUVK3Y6yie+6WnotK2bAIWZKJzIGadQqbKSc0nYVEojK5YhJqrT8uQU8sFIALlG5y84rQlOIakrwcsFa1WFNyVlhuoyVljrooShrKvoQrdgUQueB80VWwiUdFe1reJpX+FZ2zbJc0hipAoX6jqlYZTLJMUpwo0UbyLuJ+3kqviM+xtWg1J1aLl3+R5IeaxbOOBGlKuHpVLHzX7W07CiDY8zg3jzDnfVu10F1rBZeg8/buhM5JJcb/LI/D2FzqqbKTtlhw6FupmxiUMn2MtqVI3FzWzDTxU2VWWPYQUpZS48kiZjrQaPaR4FM5bEWP+k+BssjE0RgcomOIsfNTuAKFm4uUaVWybBK9te63lJijr6jXtzS6XmS6zt3keR6rD9x+YG41bwcOYRTFa+F1lpjgfNF1Vew+PmaKHQW7HRGwJhzaiuhK6I8uNM578eeDRV7a+YDYDv8T9kPi21n4Dsph5jwIdQXr06Lnu0+0kSPUHdHIKjpNYRJr16VePEq4rQFRF11lpWwTySt1XRtjI1IYHUrm7G1KvGzUfIwApL4U8XToTJlRfinMUoZPAXKiO0cIVrqFCmdUtIef8ippVL8Sj0pXmlmF42yJEdwPDspcVmBbjdKhvYOmpZVzEpCtbK7RoSUzUtVPwCZzabkyOCXPYQr5P4fXgq5OyFOCeaFqRE5aFFRoBCGIToRmrlqHXWXLMlCzxWs/c4D1TIlRe8EhCFL1N3xqgEU3YYNDQ9afKlDTLwXEfpYLnry+/wpvNQg2Gcv6GiG3hRrB7lVWaeRD73J66/wovbKr8oUx5s/iGhtWlEVLODwSK21HVJ3fWet/RH4e4jMByDu1E7WgS8sIAqQBxKt2FSuVlTxVQgvykE65hU8+RV+kHAsHZSZWRdOT7IZ36BJpja0CohsL8upH0jhcqz4hhLIo3xXwqkowLISGtGVwoRSoIPMIL1+j0q/qCyG0ZjHL+A42zEtIdRo1dTWn8Kz4c5rhVqX4XhogAmG2heKF1KuA1oK6DRNsPk8jCTXeJde9ylr1/qGfZL9DWXFQhMRi5QadBy1RUk+y0mZYPqChjQ30oMw+biRwyjmNz6ts3JbeL6XtVNHh5JhteXOh78N5oS4D6mEj6uY8RyTl2HgWNKdkO+UDbtFCLg8uKb2/wCCen1vI02fj5mjhrbkdSPNOmG7u9fRV/CXAPBbo+9OANaOHnX0T9g+r5wRTA1gpe2Q/MHYe/8ACpE+Fe9sm3afnFUOcKtBx+TouLVkBeIWWBUZNBMuypVqw0UaFXJRt1ZJQ0ClZbxjB0SyrkyauPdM5uYyglV3/mtJPdTSYbZtLvLX2NEymcYdQA3okz3hzt1RR3J1Kb2L7NLR3x7EHGhJq5qgiMRclkyvzMsks7J14K2xoSWzEvVTY6ZQp6S6JLMS9F0Cakq8Ejm8O6JlRnOSmxG0TfY6VzTAedGacs1D88lrOSVE52PlaO7Dyrx+3kn9tEKn9FijOqMp5f7+dlVMXh0NOBp6CitOIHKQetfCyT4vL1FRy9FP6U6iix4dHU+U1/lZ/FLCHDhqOY4hMXQquuNLfPVDzMtZUyTx9CwM8LM01tbp0Vo2fm80Nvai5tHc9n0uLa6gEgFW3ZCZqynIpanCKReawXxj1M1lUFLuRsJczOslZCFVmYNApWCyCmnkvyDlUog+k8nbxRkRqFl6WA4BER7tsbj1T8F6QRLpdNHWnJEhznGgRTJdrRmdrzPBL0bgjwSLQND90iI4AO3SWkcj29VbAbFJIeIQorsgYHlvBzQQORv5pw2pGlOiZE6RVtrxVo+cCqDMtXRdqG7g6H2Kok1DurSzl8k7FDmLaGxTPZQrZjE7ZJIJlGp9LC3gk8sxNoJsp0y0LAPiX0lVhjBm7lWafdulVwsRngl9GMvkaL3KCmngmygL70C1iOKKnYjrR9HELRzVKQsEJmiqYHEYhYsJMXtUL2JGiiYljS6WzMqrHFhoCPCU2h0yoT0n0U2zEDK5/W/nRNJqXWMKg5XkdyfT54rJmZpijLDxQMyysMHommKtsO1UCxv5JrwqiKVSPCo7ufnshozLkcvhTF/1X0bU/wAeyVTccNBJ1PumSFbwV/FnjNQcEw2Rm8sTKf1fdIJmMXuJ6+iJw51KOGoKrU/nBCa/eTsEq6oTOAqts9iIewXuLEKzwHLipYZ6UvKDW6JfNwDmzNPCiLz2SufxVjK1cLcLVW6ZGIZez9WavOlR5KcNJ3sx004JCcfYTwp1NFtA2nYTlN6ctUfVjYwWXDtT3Q+04d+GA00BNHdbWWcKjNdvZi0uoQyhqRz0RWKQw9oaMxzOAqaADhXyTJaJN/oC2bkWtbnuS+5dQU8L+Hgmk08uOVpsNSOPTopGUYyjRoKAKINoKcTcnqdSsDP0Wz7RlI9FTp6HvGyu862yqM/dxTS9krWRFMMUTDdFx2oQC6qiDWBnKNTBqBkkxa1TrpSeC+ds0quRXngFYMVdRpVfDqp54SvprCPmVh6mACiiBPLEZ9JrUhZWUShG4KNzVMQtHBBoZMGexCRYaYOCgiMU2iiYmjwlHIQt9yYxWKOVh0zOSroz4LcTGvT76BLIrcsGnF59K/wm84wuIaOJUL8PMV+RpytYKF37R06oY2BlMfDdEiGHCbnIu936Gcg4+2qLGyjHXiFzydb/AIbfDLf1Vxl8OZCbkhtoASSdXOcdXOPElbiCi21wEyn0oExsDAcNwvYeYcXDydVJZrYmYg1dCIjM4tG5Ep0BsfNdbbAUrZdBXQz8UP5g4lITxgvrdtDRzTVpBGoIOhV/wbGGRGgggqXbLY5kzDL4YDYzBuu0EQD9D/Y8Oy5Rh87ElohpUZTRzDUXBoR0Kf1VrXRfd+OsPjO2NiZgq3iuDNLi4NrW5HXmpdn8dZHYKG41adQeyfNAK59yzqlp7RTHYQygoKHlyR8hhDajd0uTz6KzmUZ0Q8y9rGkkgAX6BH2bKOljgKyIGRWCtKuDB3NgFYGNq7sFzSfxFz4ocw0DHAt7g6q2YdjmehcMrtCNWuPTkmxhEM+z0WMAZrrMUgIUTQf0PLmsm49kuTeoLiTxlNFS4t3HurPiJoCq09t/FPJKwGZYgIgumsdqBiw1WWRoNw944pmXWSqTFEyCnS2NPBZip3UkEP1TnEnjilYNVRcJ109DhKGOxGtIAQkwbooRrR9ErKwvJyhlYIWVgrGI3BQvaiHBRuCRoeWBRGrZ0OjaeKmDKlZeOJQSGbFcSHlvxdYDkpocMMZTibk83HVRB+eJ0bfx4KWMUF/psEYuvBq0BupmJGx0iRjFvlXmKSiASMtquRf1QwH8OMJmGNyNZ9NBFA1/9C/dp5rsFEq2gwpszLPgu1e3dP7Ygu13n7ppfq8iXPssHz5Lx3scHMcWkcQaK04bttFYKRGh4HEbjv4VbmJZzHuY8UcxxYQeDgaEKMMV3M11HLN1L08F8ft8KbsJ1ermgelUvdjEWZO/Rra2YNO5PFVdjFacIlMrBXUjN5qdTMrKRaPJdvDeiaXgVd2VhwqW329N755BAyUH1ViwyDQuPKw+3sot5OlLCHLZdrqDQ0+oarSNDcz6rjg4e6KhcPnFGxG1at65N7YKhiRq0pG9it85hwNaaG9OSURcHeBu3TJYJ002VyO1DllUfOQXNNHCiHa1MibRiC2hRjjZCt1RDzZBmQmxV1ikgmCmeMvtRI8ytK0Qt7GMB5OqzEKGl3rd7kcGzo+j1leWVih5eKyvFEBoVG4KUrAalwMng0DUDPPtQI95SubKWuDzshlGWJ5lbPClgsowea0ckfBl0hAU7AtKKVgSFCVilCjapGooVmC1YLVJRYLUcAycr2/wNjZpkcjcmDkebjLFFs3iKHwcgoGxTXmz3NHKjT6rpm0WFiYlnw6bxbmYeTxdvrbsSq9s7ELoTc2o3HV1D22Nfv4oVVJaZoiabyioT2zTILwGkutWppr4JhIwbdhRWbE5PM6vRLpeXyuISum1sqomeIjkIV/FP5dmVncpbIQ94905c24A6BALGEFtQPP3RTxurSEygA5BSv0TpEqYO1tTRGGXFNEODvIuhoqzjBGulWx3DmuBsqdFg5TRdExFllScUh7yR6Y/ULmNutoi3gtut40OyAMFXxlJinOMj7pOQuieHNXSSCpXLSCpSFvoD6RosrC8gVMry8vImMLxXlhAJFE0S2ZCZRtEvjKdFJ4TBlqdFA8IlDxEtDojCkaFGFK1IOStUjQtGrcIoVkgC9RZbovJ0TNC1Vp0n+HMxKCjYtIw5Zzuv9aH/wBK0JbiX1N7O+wSUtDw/wBAr4OYdkpmYFHV5p5CQE97qZdAcqKOr4prLNzPCUjh4+yd4f7e6KFrgwW0Ra8UQxVSyRbwCjVFB1liMFs3RUSEexbO3BVNn21fTqrtN6KkTv8Ac8UlIZC9wpEopYosh5j+6iHaJGEqeOC/ikqe4/r4pGuiOHJf8iaAFMWqOApysA//2Q=='),
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 80,
                        alignment: Alignment.bottomRight,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 28,
                              height: 28,
                              child: FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                              height: 25,
                              child: FloatingActionButton(
                                onPressed: null,
                                backgroundColor: Colors.blue,
                                child: Icon(Icons.add),
                              ),
                            ),

                          ],
                        )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('오준석'),
                ],
              ),
              Column(
                children: [
                  Text('4'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('게시물'),
                ],
              ),
              Column(
                children: [
                  Text('4'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('팔로워'),
                ],
              ),
              Column(
                children: [
                  Text('4'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('팔로윙'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
