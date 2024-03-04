.class public Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/bean/PeopleILikedBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeopleILikedListBean"
.end annotation


# instance fields
.field private date:Ljava/lang/String;

.field private userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;->userList:Ljava/util/List;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setUserList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedUserBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/bean/PeopleILikedBean$PeopleILikedListBean;->userList:Ljava/util/List;

    return-void
.end method
