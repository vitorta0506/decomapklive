.class public Lorg/apache/http/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator<",
        "Lri/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/cookie/CookiePathComparator;

.field private static final serialVersionUID:J = 0x68695b9a07ff953aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/cookie/CookiePathComparator;

    invoke-direct {v0}, Lorg/apache/http/cookie/CookiePathComparator;-><init>()V

    sput-object v0, Lorg/apache/http/cookie/CookiePathComparator;->INSTANCE:Lorg/apache/http/cookie/CookiePathComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lri/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Lri/a;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lri/a;

    check-cast p2, Lri/a;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/cookie/CookiePathComparator;->compare(Lri/a;Lri/a;)I

    move-result p1

    return p1
.end method

.method public compare(Lri/a;Lri/a;)I
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/http/cookie/CookiePathComparator;->normalizePath(Lri/a;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p2}, Lorg/apache/http/cookie/CookiePathComparator;->normalizePath(Lri/a;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
