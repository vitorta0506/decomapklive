.class abstract Leh/l2$a$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l2$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l2$a$a$b$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Leh/l2$a$a$b$a;ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)Leh/l2$a$a$b;
    .locals 7

    new-instance v6, Leh/d0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Leh/d0;-><init>(Leh/l2$a$a$b$a;ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)V

    return-object v6
.end method

.method static b(Z)Leh/l2$a$a$b;
    .locals 2

    sget-object v0, Leh/l2$a$a$b$a;->b:Leh/l2$a$a$b$a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, v1}, Leh/l2$a$a$b;->a(Leh/l2$a$a$b$a;ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)Leh/l2$a$a$b;

    move-result-object p0

    return-object p0
.end method

.method static c(ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)Leh/l2$a$a$b;
    .locals 1

    const-string v0, "headerName"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Leh/l2$a$a$b$a;->a:Leh/l2$a$a$b$a;

    invoke-static {v0, p0, p1, p2, p3}, Leh/l2$a$a$b;->a(Leh/l2$a$a$b$a;ZLjava/lang/String;Lcom/google/re2j/Pattern;Ljava/lang/String;)Leh/l2$a$a$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Z
.end method

.method abstract f()Lcom/google/re2j/Pattern;
.end method

.method abstract g()Ljava/lang/String;
.end method

.method abstract h()Leh/l2$a$a$b$a;
.end method
