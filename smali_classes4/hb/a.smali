.class public final synthetic Lhb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static a(Lhb/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Ly7/e;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Ly7/e;->g(Z)V

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
