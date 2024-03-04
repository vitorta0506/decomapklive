.class abstract Leh/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Leh/g1;Leh/n1;Leh/e1;Leh/k2;)Leh/f1;
    .locals 1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lih/f;

    invoke-direct {v0, p3, p4}, Lih/f;-><init>(Leh/b1;Leh/k2;)V

    move-object p3, v0

    .line 2
    :goto_0
    new-instance p4, Leh/l;

    invoke-direct {p4, p0, p1, p2, p3}, Leh/l;-><init>(Ljava/lang/String;Leh/g1;Leh/n1;Lih/f;)V

    return-object p4
.end method


# virtual methods
.method abstract b()Leh/g1;
.end method

.method abstract c()Leh/n1;
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Lih/f;
.end method
