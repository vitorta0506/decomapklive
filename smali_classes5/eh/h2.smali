.class abstract Leh/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;J)Leh/h2;
    .locals 1

    new-instance v0, Leh/x;

    invoke-direct {v0, p0, p1, p2}, Leh/x;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method abstract c()J
.end method
