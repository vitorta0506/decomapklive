.class public Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/c$a;
    }
.end annotation


# static fields
.field private static a:Lz/c$a;

.field private static b:Lz/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz/c$a;

    invoke-direct {v0}, Lz/c$a;-><init>()V

    sput-object v0, Lz/c;->a:Lz/c$a;

    .line 2
    new-instance v0, Lz/f;

    invoke-direct {v0}, Lz/f;-><init>()V

    sput-object v0, Lz/c;->b:Lz/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lz/c;->b:Lz/d;

    invoke-interface {v0, p0, p1}, Lz/d;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lz/c;->a:Lz/c$a;

    invoke-virtual {v0, p2}, Lz/c$a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lz/c;->b:Lz/d;

    invoke-interface {v0, p0, p1}, Lz/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lz/c;->b:Lz/d;

    invoke-interface {v0, p0, p1}, Lz/d;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lz/c;->a:Lz/c$a;

    invoke-virtual {v0, p2}, Lz/c$a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lz/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lz/c;->b:Lz/d;

    invoke-interface {v0, p0, p1}, Lz/d;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
