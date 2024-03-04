.class abstract Leh/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Leh/t1;
    .locals 1

    new-instance v0, Leh/t;

    invoke-direct {v0, p0, p1, p2}, Leh/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Ljava/lang/String;
.end method

.method abstract d()Ljava/lang/String;
.end method
