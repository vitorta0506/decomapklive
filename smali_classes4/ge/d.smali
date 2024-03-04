.class public final Lge/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/b<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lge/i;

.field private final b:Lde/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/d<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lge/i;Lde/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lge/i;",
            "Lde/d<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge/d;->a:Lge/i;

    .line 3
    iput-object p2, p0, Lge/d;->b:Lde/d;

    return-void
.end method


# virtual methods
.method public final synthetic push(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lge/d;->a:Lge/i;

    .line 3
    invoke-virtual {v0}, Lge/i;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->sequence_id(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object p1

    const-string v0, "Android"

    .line 4
    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_type(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object p1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lge/d;->b:Lde/d;

    invoke-virtual {v0, p1}, Lde/d;->push(Ljava/lang/Object;)V

    return-void
.end method
