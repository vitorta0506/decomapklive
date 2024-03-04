.class abstract Leh/j1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Long;ZLeh/j1$c;)Leh/j1$b;
    .locals 1

    new-instance v0, Leh/q;

    invoke-direct {v0, p0, p1, p2}, Leh/q;-><init>(Ljava/lang/Long;ZLeh/j1$c;)V

    return-object v0
.end method

.method static c(JLeh/j1$c;)Leh/j1$b;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, Leh/j1$b;->a(Ljava/lang/Long;ZLeh/j1$c;)Leh/j1$b;

    move-result-object p0

    return-object p0
.end method

.method static d(Leh/j1$c;)Leh/j1$b;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Leh/j1$b;->a(Ljava/lang/Long;ZLeh/j1$c;)Leh/j1$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract b()Ljava/lang/Long;
.end method

.method abstract e()Z
.end method

.method abstract f()Leh/j1$c;
.end method
