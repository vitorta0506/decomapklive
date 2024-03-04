.class final Lorg/conscrypt/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/conscrypt/p$c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lorg/conscrypt/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/conscrypt/o$a;

    invoke-direct {v0}, Lorg/conscrypt/o$a;-><init>()V

    sput-object v0, Lorg/conscrypt/o$a;->a:Lorg/conscrypt/o$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/conscrypt/p$c;Lorg/conscrypt/p$c;)I
    .locals 3

    .line 1
    iget-object p1, p1, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    .line 2
    iget-object p2, p2, Lorg/conscrypt/p$c;->e:Ljava/lang/Throwable;

    .line 3
    instance-of v0, p1, Ljava/lang/UnsatisfiedLinkError;

    .line 4
    instance-of v1, p2, Ljava/lang/UnsatisfiedLinkError;

    if-eq v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "java.library.path"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/conscrypt/p$c;

    check-cast p2, Lorg/conscrypt/p$c;

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/o$a;->a(Lorg/conscrypt/p$c;Lorg/conscrypt/p$c;)I

    move-result p1

    return p1
.end method
