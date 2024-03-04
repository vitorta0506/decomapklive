.class public Lcom/guochao/faceshow/aaspring/beans/Comment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/Comment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avatar:Ljava/lang/String;

.field private byCommentator:Ljava/lang/String;

.field private byCommentatorId:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private commentId:I

.field private commentJson:Ljava/lang/String;

.field private commentParent:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field private createTime:Ljava/lang/String;

.field private isCommentator:Ljava/lang/String;

.field private isLike:I

.field private levelId:I

.field private likeNum:I

.field private parentCommentId:I

.field private sex:I

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private videoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/Comment$3;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/Comment$3;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userImg:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isLike:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->createTime:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isCommentator:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentId:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->parentCommentId:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->videoId:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->comment:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentJson:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userId:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->likeNum:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentator:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentatorId:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->sex:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->levelId:I

    .line 18
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/Comment;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentParent:Lcom/guochao/faceshow/aaspring/beans/Comment;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->avatar:Ljava/lang/String;

    .line 20
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public static getRealComment(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/Comment;)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentJson()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getComment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentJson()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/Comment$1;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/Comment$1;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 6
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 9
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/CommentTypeListBean;

    .line 10
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/CommentTypeListBean;->getContent()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/CommentTypeListBean;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    new-instance v7, Lcom/guochao/faceshow/aaspring/beans/Comment$2;

    invoke-direct {v7, p0, v4}, Lcom/guochao/faceshow/aaspring/beans/Comment$2;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/bean/CommentTypeListBean;)V

    .line 14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v8, 0x21

    .line 15
    invoke-virtual {v6, v7, v2, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, v4, v2, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, " "

    .line 18
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getByCommentator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentator:Ljava/lang/String;

    return-object v0
.end method

.method public getByCommentatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentId:I

    return v0
.end method

.method public getCommentJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentJson:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentParent()Lcom/guochao/faceshow/aaspring/beans/Comment;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentParent:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->sex:I

    return v0
.end method

.method public getIsCommentator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isCommentator:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLike()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isLike:I

    return v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->levelId:I

    return v0
.end method

.method public getLikeNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->likeNum:I

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentCommentId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->parentCommentId:I

    return v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->sex:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->videoId:I

    return v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setByCommentator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentator:Ljava/lang/String;

    return-void
.end method

.method public setByCommentatorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentatorId:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentId:I

    return-void
.end method

.method public setCommentJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentJson:Ljava/lang/String;

    return-void
.end method

.method public setCommentParent(Lcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentParent:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setIsCommentator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isCommentator:Ljava/lang/String;

    return-void
.end method

.method public setIsLike(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isLike:I

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->levelId:I

    return-void
.end method

.method public setLikeNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->likeNum:I

    return-void
.end method

.method public setParentCommentId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->parentCommentId:I

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->sex:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVideoId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->videoId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isLike:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->createTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->isCommentator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->parentCommentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->videoId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentJson:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->likeNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->byCommentatorId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->sex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->levelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->commentParent:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->avatar:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/Comment;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
