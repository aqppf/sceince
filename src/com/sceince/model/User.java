package com.sceince.model;

public class User {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.id
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.email
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String email;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.mobile
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String mobile;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.password
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String password;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.salt
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String salt;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.payPassword
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String paypassword;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.payPasswordSalt
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String paypasswordsalt;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.uri
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String uri;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.level
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Short level;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.nickname
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String nickname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.title
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String title;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.tags
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String tags;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.type
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String type;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.point
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer point;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.coin
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer coin;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.defaultAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Byte defaultavatar;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.smallAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String smallavatar;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.mediumAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String mediumavatar;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.largeAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String largeavatar;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.emailVerified
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Boolean emailverified;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.setup
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Byte setup;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.roles
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String roles;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.promoted
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Byte promoted;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.promotedTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer promotedtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.locked
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Byte locked;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.lockDeadline
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer lockdeadline;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.consecutivePasswordErrorTimes
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer consecutivepassworderrortimes;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.lastPasswordFailTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer lastpasswordfailtime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.loginTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer logintime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.loginIp
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String loginip;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.loginSessionId
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String loginsessionid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.approvalTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer approvaltime;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.approvalStatus
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String approvalstatus;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.newMessageNum
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer newmessagenum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.newNotificationNum
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer newnotificationnum;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.deviceId
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer deviceid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.createdIp
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private String createdip;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sc_user.createdTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    private Integer createdtime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.id
     *
     * @return the value of sc_user.id
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.id
     *
     * @param id the value for sc_user.id
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.email
     *
     * @return the value of sc_user.email
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.email
     *
     * @param email the value for sc_user.email
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.mobile
     *
     * @return the value of sc_user.mobile
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.mobile
     *
     * @param mobile the value for sc_user.mobile
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.password
     *
     * @return the value of sc_user.password
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.password
     *
     * @param password the value for sc_user.password
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.salt
     *
     * @return the value of sc_user.salt
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getSalt() {
        return salt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.salt
     *
     * @param salt the value for sc_user.salt
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setSalt(String salt) {
        this.salt = salt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.payPassword
     *
     * @return the value of sc_user.payPassword
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getPaypassword() {
        return paypassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.payPassword
     *
     * @param paypassword the value for sc_user.payPassword
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setPaypassword(String paypassword) {
        this.paypassword = paypassword;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.payPasswordSalt
     *
     * @return the value of sc_user.payPasswordSalt
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getPaypasswordsalt() {
        return paypasswordsalt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.payPasswordSalt
     *
     * @param paypasswordsalt the value for sc_user.payPasswordSalt
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setPaypasswordsalt(String paypasswordsalt) {
        this.paypasswordsalt = paypasswordsalt;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.uri
     *
     * @return the value of sc_user.uri
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getUri() {
        return uri;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.uri
     *
     * @param uri the value for sc_user.uri
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setUri(String uri) {
        this.uri = uri;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.level
     *
     * @return the value of sc_user.level
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Short getLevel() {
        return level;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.level
     *
     * @param level the value for sc_user.level
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLevel(Short level) {
        this.level = level;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.nickname
     *
     * @return the value of sc_user.nickname
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.nickname
     *
     * @param nickname the value for sc_user.nickname
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.title
     *
     * @return the value of sc_user.title
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.title
     *
     * @param title the value for sc_user.title
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.tags
     *
     * @return the value of sc_user.tags
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getTags() {
        return tags;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.tags
     *
     * @param tags the value for sc_user.tags
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setTags(String tags) {
        this.tags = tags;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.type
     *
     * @return the value of sc_user.type
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.type
     *
     * @param type the value for sc_user.type
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.point
     *
     * @return the value of sc_user.point
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getPoint() {
        return point;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.point
     *
     * @param point the value for sc_user.point
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setPoint(Integer point) {
        this.point = point;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.coin
     *
     * @return the value of sc_user.coin
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getCoin() {
        return coin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.coin
     *
     * @param coin the value for sc_user.coin
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setCoin(Integer coin) {
        this.coin = coin;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.defaultAvatar
     *
     * @return the value of sc_user.defaultAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Byte getDefaultavatar() {
        return defaultavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.defaultAvatar
     *
     * @param defaultavatar the value for sc_user.defaultAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setDefaultavatar(Byte defaultavatar) {
        this.defaultavatar = defaultavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.smallAvatar
     *
     * @return the value of sc_user.smallAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getSmallavatar() {
        return smallavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.smallAvatar
     *
     * @param smallavatar the value for sc_user.smallAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setSmallavatar(String smallavatar) {
        this.smallavatar = smallavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.mediumAvatar
     *
     * @return the value of sc_user.mediumAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getMediumavatar() {
        return mediumavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.mediumAvatar
     *
     * @param mediumavatar the value for sc_user.mediumAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setMediumavatar(String mediumavatar) {
        this.mediumavatar = mediumavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.largeAvatar
     *
     * @return the value of sc_user.largeAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getLargeavatar() {
        return largeavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.largeAvatar
     *
     * @param largeavatar the value for sc_user.largeAvatar
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLargeavatar(String largeavatar) {
        this.largeavatar = largeavatar;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.emailVerified
     *
     * @return the value of sc_user.emailVerified
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Boolean getEmailverified() {
        return emailverified;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.emailVerified
     *
     * @param emailverified the value for sc_user.emailVerified
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setEmailverified(Boolean emailverified) {
        this.emailverified = emailverified;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.setup
     *
     * @return the value of sc_user.setup
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Byte getSetup() {
        return setup;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.setup
     *
     * @param setup the value for sc_user.setup
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setSetup(Byte setup) {
        this.setup = setup;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.roles
     *
     * @return the value of sc_user.roles
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getRoles() {
        return roles;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.roles
     *
     * @param roles the value for sc_user.roles
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setRoles(String roles) {
        this.roles = roles;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.promoted
     *
     * @return the value of sc_user.promoted
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Byte getPromoted() {
        return promoted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.promoted
     *
     * @param promoted the value for sc_user.promoted
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setPromoted(Byte promoted) {
        this.promoted = promoted;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.promotedTime
     *
     * @return the value of sc_user.promotedTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getPromotedtime() {
        return promotedtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.promotedTime
     *
     * @param promotedtime the value for sc_user.promotedTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setPromotedtime(Integer promotedtime) {
        this.promotedtime = promotedtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.locked
     *
     * @return the value of sc_user.locked
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Byte getLocked() {
        return locked;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.locked
     *
     * @param locked the value for sc_user.locked
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLocked(Byte locked) {
        this.locked = locked;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.lockDeadline
     *
     * @return the value of sc_user.lockDeadline
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getLockdeadline() {
        return lockdeadline;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.lockDeadline
     *
     * @param lockdeadline the value for sc_user.lockDeadline
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLockdeadline(Integer lockdeadline) {
        this.lockdeadline = lockdeadline;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.consecutivePasswordErrorTimes
     *
     * @return the value of sc_user.consecutivePasswordErrorTimes
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getConsecutivepassworderrortimes() {
        return consecutivepassworderrortimes;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.consecutivePasswordErrorTimes
     *
     * @param consecutivepassworderrortimes the value for sc_user.consecutivePasswordErrorTimes
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setConsecutivepassworderrortimes(Integer consecutivepassworderrortimes) {
        this.consecutivepassworderrortimes = consecutivepassworderrortimes;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.lastPasswordFailTime
     *
     * @return the value of sc_user.lastPasswordFailTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getLastpasswordfailtime() {
        return lastpasswordfailtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.lastPasswordFailTime
     *
     * @param lastpasswordfailtime the value for sc_user.lastPasswordFailTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLastpasswordfailtime(Integer lastpasswordfailtime) {
        this.lastpasswordfailtime = lastpasswordfailtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.loginTime
     *
     * @return the value of sc_user.loginTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getLogintime() {
        return logintime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.loginTime
     *
     * @param logintime the value for sc_user.loginTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLogintime(Integer logintime) {
        this.logintime = logintime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.loginIp
     *
     * @return the value of sc_user.loginIp
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getLoginip() {
        return loginip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.loginIp
     *
     * @param loginip the value for sc_user.loginIp
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLoginip(String loginip) {
        this.loginip = loginip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.loginSessionId
     *
     * @return the value of sc_user.loginSessionId
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getLoginsessionid() {
        return loginsessionid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.loginSessionId
     *
     * @param loginsessionid the value for sc_user.loginSessionId
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setLoginsessionid(String loginsessionid) {
        this.loginsessionid = loginsessionid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.approvalTime
     *
     * @return the value of sc_user.approvalTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getApprovaltime() {
        return approvaltime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.approvalTime
     *
     * @param approvaltime the value for sc_user.approvalTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setApprovaltime(Integer approvaltime) {
        this.approvaltime = approvaltime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.approvalStatus
     *
     * @return the value of sc_user.approvalStatus
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getApprovalstatus() {
        return approvalstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.approvalStatus
     *
     * @param approvalstatus the value for sc_user.approvalStatus
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setApprovalstatus(String approvalstatus) {
        this.approvalstatus = approvalstatus;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.newMessageNum
     *
     * @return the value of sc_user.newMessageNum
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getNewmessagenum() {
        return newmessagenum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.newMessageNum
     *
     * @param newmessagenum the value for sc_user.newMessageNum
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setNewmessagenum(Integer newmessagenum) {
        this.newmessagenum = newmessagenum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.newNotificationNum
     *
     * @return the value of sc_user.newNotificationNum
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getNewnotificationnum() {
        return newnotificationnum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.newNotificationNum
     *
     * @param newnotificationnum the value for sc_user.newNotificationNum
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setNewnotificationnum(Integer newnotificationnum) {
        this.newnotificationnum = newnotificationnum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.deviceId
     *
     * @return the value of sc_user.deviceId
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getDeviceid() {
        return deviceid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.deviceId
     *
     * @param deviceid the value for sc_user.deviceId
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setDeviceid(Integer deviceid) {
        this.deviceid = deviceid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.createdIp
     *
     * @return the value of sc_user.createdIp
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public String getCreatedip() {
        return createdip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.createdIp
     *
     * @param createdip the value for sc_user.createdIp
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setCreatedip(String createdip) {
        this.createdip = createdip;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sc_user.createdTime
     *
     * @return the value of sc_user.createdTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public Integer getCreatedtime() {
        return createdtime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sc_user.createdTime
     *
     * @param createdtime the value for sc_user.createdTime
     *
     * @mbg.generated Wed Sep 27 09:54:13 CST 2017
     */
    public void setCreatedtime(Integer createdtime) {
        this.createdtime = createdtime;
    }
}