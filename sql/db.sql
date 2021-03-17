-- CREATE DATABASE warsztat2krks05
--  CHARACTER SET utf8
--  COLLATE utf8_general_ci;

CREATE TABLE users (
  id INT AUTO_INCREMENT,
  username VARCHAR (255) UNIQUE,
  email VARCHAR (255),
  password VARCHAR (255),
  PRIMARY KEY (id)
);

 public static String reversePattern(String text, String pattern) {
        char[] textChars = text.toCharArray();
        boolean flag = false;
        int whereItStarts = 0;
        for (int i = 0; i < textChars.length; i++) {
            if (text.charAt(i) == pattern.charAt(0)) {
                whereItStarts = i;
                for (int j = 1; j < pattern.length(); j++) {
                    if (text.charAt(i + j) == pattern.charAt(j)) {
                        flag = true;
                    } else {
                        flag = false;
                        break;
                    }
                }
            }
        }

        if (flag) {
            for (int i = 0; i <= pattern.length() - 1; i++) {
                textChars[whereItStarts] = pattern.charAt(pattern.length() - i - 1);
                whereItStarts++;
            }
            return textChars.toString();
        }else {
            return "Pattern has not been found";
        }
    }
}
