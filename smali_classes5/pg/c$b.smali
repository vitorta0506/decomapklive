.class final Lpg/c$b;
.super Lug/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/n<",
        "Lpg/c$d;",
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

    invoke-virtual {p0}, Lpg/c$b;->o()Lpg/c$d;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lpg/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lpg/c$d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lpg/c$d;-><init>(I)V

    return-object v0
.end method
