.class public Lcom/guochao/faceshow/mine/model/HobbyResultBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private sysHobbies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field private userHobbies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->userHobbies:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->sysHobbies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSysHobbies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->sysHobbies:Ljava/util/List;

    return-object v0
.end method

.method public getUserHobbies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->userHobbies:Ljava/util/List;

    return-object v0
.end method

.method public setSysHobbies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->sysHobbies:Ljava/util/List;

    return-void
.end method

.method public setUserHobbies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->userHobbies:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HobbyResultBean{userHobbies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->userHobbies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sysHobbies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/mine/model/HobbyResultBean;->sysHobbies:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
