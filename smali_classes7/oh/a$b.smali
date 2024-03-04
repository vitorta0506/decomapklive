.class final Loh/a$b;
.super Loh/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Loh/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmh/j;Ljava/lang/Object;Loh/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lmh/j;",
            "TC;",
            "Loh/a$c<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "spanContext"

    .line 1
    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "carrier"

    .line 2
    invoke-static {p2, p1}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "setter"

    .line 3
    invoke-static {p3, p1}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
