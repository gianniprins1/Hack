buildscript {
    repositories {
        maven { url "http://repo.springsource.org/libs-snapshot" }
        mavenLocal()
    }
}

apply plugin: 'java'
apply plugin: 'eclipse'
apply plugin: 'idea'

jar {
    baseName = 'gs-accessing-facebook'
    version =  '0.1.0'
}

repositories {
    mavenCentral()
    maven { url "http://repo.springsource.org/libs-snapshot" }
}

dependencies {
    compile("org.springframework.boot:spring-boot-starter-web:0.5.0.M2")
    compile("org.springframework.social:spring-social-facebook:1.1.0.BUILD-SNAPSHOT")
    compile("org.springframework.security:spring-security-crypto:3.1.4.RELEASE")
    compile("org.thymeleaf:thymeleaf-spring3:2.0.16")
    testCompile("junit:junit:4.11")
}

task wrapper(type: Wrapper) {
    gradleVersion = '1.7'
}
