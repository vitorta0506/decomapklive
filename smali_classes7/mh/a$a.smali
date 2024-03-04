.class abstract Lmh/a$a;
.super Lmh/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmh/a;-><init>()V

    return-void
.end method

.method static c(Ljava/lang/Long;)Lmh/a;
    .locals 2

    .line 1
    new-instance v0, Lmh/b;

    const-string v1, "longValue"

    .line 2
    invoke-static {p0, v1}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Lmh/b;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method abstract d()Ljava/lang/Long;
.end method
