.class public final Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;
.super Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnlineStatusModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006\u00a2\u0006\u0002\u0010\u0007J)\u0010\n\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006H\u00c6\u0003J3\u0010\u000b\u001a\u00020\u00002(\u0008\u0002\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006H\u00c6\u0001J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0004H\u00d6\u0001R1\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u0001`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;",
        "onlineMap",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
        "Lkotlin/collections/LinkedHashMap;",
        "(Ljava/util/LinkedHashMap;)V",
        "getOnlineMap",
        "()Ljava/util/LinkedHashMap;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final onlineMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;Ljava/util/LinkedHashMap;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->copy(Ljava/util/LinkedHashMap;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final copy(Ljava/util/LinkedHashMap;)Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;
    .locals 1
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;-><init>(Ljava/util/LinkedHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOnlineMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$Online;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineStatusModel(onlineMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/model/ConversationModel$OnlineStatusModel;->onlineMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
