.class final Lpg/d$a;
.super Lug/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/n<",
        "Lpg/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lug/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lpg/d$a;->o()Lpg/d;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lpg/d;
    .locals 2

    new-instance v0, Lpg/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpg/d;-><init>(Lpg/d$a;)V

    return-object v0
.end method
