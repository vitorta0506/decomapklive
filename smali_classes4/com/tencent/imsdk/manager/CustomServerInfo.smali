.class public Lcom/tencent/imsdk/manager/CustomServerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;
    }
.end annotation


# instance fields
.field public longconnectionAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;",
            ">;"
        }
    .end annotation
.end field

.field public serverPublicKey:Ljava/lang/String;

.field public shortconnectionAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/manager/CustomServerInfo$ServerAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo;->longconnectionAddressList:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo;->shortconnectionAddressList:Ljava/util/List;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/tencent/imsdk/manager/CustomServerInfo;->serverPublicKey:Ljava/lang/String;

    return-void
.end method
