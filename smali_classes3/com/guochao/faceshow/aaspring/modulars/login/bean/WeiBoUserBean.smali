.class public Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;
    }
.end annotation


# instance fields
.field private allow_all_act_msg:Z

.field private allow_all_comment:Z

.field private avatar_large:Ljava/lang/String;

.field private bi_followers_count:I

.field private city:Ljava/lang/String;

.field private created_at:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private favourites_count:I

.field private follow_me:Z

.field private followers_count:I

.field private following:Z

.field private friends_count:I

.field private gender:Ljava/lang/String;

.field private geo_enabled:Z

.field private id:J

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private online_status:I

.field private profile_image_url:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private screen_name:Ljava/lang/String;

.field private status:Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;

.field private statuses_count:I

.field private url:Ljava/lang/String;

.field private verified:Z

.field private verified_reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_large()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->avatar_large:Ljava/lang/String;

    return-object v0
.end method

.method public getBi_followers_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->bi_followers_count:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->created_at:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFavourites_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->favourites_count:I

    return v0
.end method

.method public getFollowers_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->followers_count:I

    return v0
.end method

.method public getFriends_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->friends_count:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline_status()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->online_status:I

    return v0
.end method

.method public getProfile_image_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->profile_image_url:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->screen_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->status:Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;

    return-object v0
.end method

.method public getStatuses_count()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->statuses_count:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified_reason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->verified_reason:Ljava/lang/String;

    return-object v0
.end method

.method public isAllow_all_act_msg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->allow_all_act_msg:Z

    return v0
.end method

.method public isAllow_all_comment()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->allow_all_comment:Z

    return v0
.end method

.method public isFollow_me()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->follow_me:Z

    return v0
.end method

.method public isFollowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->following:Z

    return v0
.end method

.method public isGeo_enabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->geo_enabled:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->verified:Z

    return v0
.end method

.method public setAllow_all_act_msg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->allow_all_act_msg:Z

    return-void
.end method

.method public setAllow_all_comment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->allow_all_comment:Z

    return-void
.end method

.method public setAvatar_large(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->avatar_large:Ljava/lang/String;

    return-void
.end method

.method public setBi_followers_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->bi_followers_count:I

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->created_at:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->domain:Ljava/lang/String;

    return-void
.end method

.method public setFavourites_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->favourites_count:I

    return-void
.end method

.method public setFollow_me(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->follow_me:Z

    return-void
.end method

.method public setFollowers_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->followers_count:I

    return-void
.end method

.method public setFollowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->following:Z

    return-void
.end method

.method public setFriends_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->friends_count:I

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGeo_enabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->geo_enabled:Z

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->id:J

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnline_status(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->online_status:I

    return-void
.end method

.method public setProfile_image_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->profile_image_url:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->province:Ljava/lang/String;

    return-void
.end method

.method public setScreen_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->screen_name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->status:Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean$StatusBean;

    return-void
.end method

.method public setStatuses_count(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->statuses_count:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->url:Ljava/lang/String;

    return-void
.end method

.method public setVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->verified:Z

    return-void
.end method

.method public setVerified_reason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/WeiBoUserBean;->verified_reason:Ljava/lang/String;

    return-void
.end method
