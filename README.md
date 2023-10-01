This README would normally document whatever steps are necessary to get your application up and running.

What is this repository for?


Quick summary: The project is an automation framework for web using java + selenium
Version: 1.0
🎬 Scenarios
Open ecommerce website say https://www.powerbuy.co.th/th

Change language to EN

Search by using the keyword “TV”

Filter TV with Screen Size Group (inches) “44 – 55 inches” screen size and add one item to the cart from the return list

Navigate to  “56 – 65 inches” screen size page and add one item to the cart from the return list

Check the cart on https://www.powerbuy.co.th/en/cart and validate results of items in the cart that match with the items that were added in the previous steps or not.

How do I get set up?
Summary of set up
Make sure you have installed all of the following prerequisites on your development machine:

* JDK 19 - [Download and install JDK 19](https://www.oracle.com/java/technologies/javase/jdk19-archive-downloads.html)
* Maven - [Download & Install Maven](https://maven.apache.org/download.cgi)
* IntelliJ - [Download & Install IntelliJ Community](https://www.jetbrains.com/idea/download/#section=windows)
Configuration
🏁 Starting
The file "setting.xml" located in maven/config package needs attention: Add your project path in localRepository tag

<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>vn.edu.vtiacademy</groupId>
    <artifactId>AutomationFramework</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>11</maven.compiler.source>
        <maven.compiler.target>11</maven.compiler.target>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <log4j.version>1.2.12</log4j.version>
        <slf4j.verion>1.7.36</slf4j.verion>
        <selenium.version>4.10.0</selenium.version>
        <webdrivermanager.version>5.4.1</webdrivermanager.version>
        <testng.version>7.8.0</testng.version>
        <allure-testng.version>2.23.0</allure-testng.version>
        <maven-surefire-plugin-version>3.0.0-M5</maven-surefire-plugin-version>
        <maven-compiler-plugin-version>3.11.0</maven-compiler-plugin-version>
        <aspectj.version>1.9.19</aspectj.version>
        <ashot.version>1.5.4</ashot.version>
        <json-path.version>2.8.0</json-path.version>
        <cucumber-java.version>7.13.0</cucumber-java.version>
        <cucumber-testng.version>7.13.0</cucumber-testng.version>
        <cucumber-picocontainer.version>7.13.0</cucumber-picocontainer.version>
        <allure-cucumber7-jvm.version>2.23.0</allure-cucumber7-jvm.version>
        <cucumber.gherkin.version>26.2.0</cucumber.gherkin.version>
        <appium.java.clien.version>8.3.0</appium.java.clien.version>
        <apache.poi.version>5.0.0</apache.poi.version>
        <poi-ooxml.version>5.0.0</poi-ooxml.version>
        <log4j-to-slf4j-version>2.8.2</log4j-to-slf4j-version>
    </properties>

    <dependencies>

        <!-- https://mvnrepository.com/artifact/log4j/log4j -->
        <dependency>
            <groupId>log4j</groupId>
            <artifactId>log4j</artifactId>
            <version>${log4j.version}</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/org.slf4j/slf4j-api -->
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-api</artifactId>
            <version>${slf4j.verion}</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/org.slf4j/slf4j-reload4j -->
        <dependency>
            <groupId>org.slf4j</groupId>
            <artifactId>slf4j-reload4j</artifactId>
            <version>${slf4j.verion}</version>
        </dependency>

        <dependency>
            <groupId>org.apache.logging.log4j</groupId>
            <artifactId>log4j-to-slf4j</artifactId>
            <version>${log4j-to-slf4j-version}</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
        <dependency>
            <groupId>org.seleniumhq.selenium</groupId>
            <artifactId>selenium-java</artifactId>
            <version>${selenium.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/org.testng/testng -->
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>${testng.version}</version>
            <scope>test</scope>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.github.bonigarcia/webdrivermanager -->
        <dependency>
            <groupId>io.github.bonigarcia</groupId>
            <artifactId>webdrivermanager</artifactId>
            <version>${webdrivermanager.version}</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/io.qameta.allure/allure-testng -->
        <dependency>
            <groupId>io.qameta.allure</groupId>
            <artifactId>allure-testng</artifactId>
            <version>${allure-testng.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/org.aspectj/aspectjweaver -->
        <dependency>
            <groupId>org.aspectj</groupId>
            <artifactId>aspectjweaver</artifactId>
            <version>${aspectj.version}</version>
            <scope>runtime</scope>
        </dependency>
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>7.8.0</version>
            <scope>compile</scope>
        </dependency>
        <!-- https://mvnrepository.com/artifact/ru.yandex.qatools.ashot/ashot -->
        <dependency>
            <groupId>ru.yandex.qatools.ashot</groupId>
            <artifactId>ashot</artifactId>
            <version>${ashot.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/com.jayway.jsonpath/json-path -->
        <dependency>
            <groupId>com.jayway.jsonpath</groupId>
            <artifactId>json-path</artifactId>
            <version>${json-path.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.cucumber/cucumber-java -->
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-java</artifactId>
            <version>${cucumber-java.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.cucumber/cucumber-testng -->
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-testng</artifactId>
            <version>${cucumber-testng.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.cucumber/cucumber-picocontainer -->
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-picocontainer</artifactId>
            <version>${cucumber-picocontainer.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.qameta.allure/allure-cucumber7-jvm -->
        <dependency>
            <groupId>io.qameta.allure</groupId>
            <artifactId>allure-cucumber7-jvm</artifactId>
            <version>${allure-cucumber7-jvm.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.cucumber/gherkin -->
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>gherkin</artifactId>
            <version>${cucumber.gherkin.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/io.appium/java-client -->
        <dependency>
            <groupId>io.appium</groupId>
            <artifactId>java-client</artifactId>
            <version>${appium.java.clien.version}</version>
        </dependency>
        <!-- https://mvnrepository.com/artifact/org.apache.poi/poi -->
        <dependency>
            <groupId>org.apache.poi</groupId>
            <artifactId>poi</artifactId>
            <version>${apache.poi.version}</version>
        </dependency>

        <dependency>
            <groupId>org.apache.poi</groupId>
            <artifactId>poi-ooxml</artifactId>
            <version>${poi-ooxml.version}</version>
        </dependency>










    </dependencies>
    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven-compiler-plugin-version}</version>
                <configuration>
                    <source>11</source> <!--For JAVA 8 use 1.8-->
                    <target>11</target> <!--For JAVA 8 use 1.8-->
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>${maven-surefire-plugin-version}</version>
                <configuration>
                    <suiteXmlFiles>
                        <suiteXmlFile>LoginTest.xml</suiteXmlFile>
                        <suiteXmlFiles>
                            <suiteXmlFile>${project.basedir}/src/main/resources/testsuites/${testsuite}.xml</suiteXmlFile>
                        </suiteXmlFiles>
                    </suiteXmlFiles>
                    <argLine>
                        -javaagent:"${settings.localRepository}/org/aspectj/aspectjweaver/${aspectj.version}/aspectjweaver-${aspectj.version}.jar"
                        -Dcucumber.options="--plugin io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm"
                    </argLine>
                </configuration>
                <dependencies>
                    <dependency>
                        <groupId>org.aspectj</groupId>
                        <artifactId>aspectjweaver</artifactId>
                        <version>${aspectj.version}</version>
                    </dependency>
                </dependencies>
            </plugin>
        </plugins>
    </build>
</project>
How to run tests
There are a couple of ways to execute the code

To run test project, simply right-click on ItemsInCart.xml and select "Run"
To run test project ,right-click on TestNGRunner and select "Run"

Typing this line to terminal mvn --settings ./maven/config/settings.xml test -Dtestsuite=ItemsInCart

Please ensure that you added the required code to the pom.xml file

<suiteXmlFiles>
      <suiteXmlFile>${project.basedir}/src/main/resources/testsuites/${testsuite}.xml</suiteXmlFile>
</suiteXmlFiles>
Deployment instructions
Contribution guidelines
Writing tests
Code review
Other guidelines
🤔 📧 Who do I talk to?
My Linh nguyenthimylinh0712@gmail.com
Luu Minh Tuyen (Mentor)
