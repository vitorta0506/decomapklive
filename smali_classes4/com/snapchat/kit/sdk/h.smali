.class public final Lcom/snapchat/kit/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/h$a;
    }
.end annotation


# instance fields
.field private a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lde/m;->a()Leg/c;

    move-result-object v0

    invoke-static {v0}, Leg/b;->b(Lfi/a;)Lfi/a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/kit/sdk/h;->a:Lfi/a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/snapchat/kit/sdk/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/h;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
