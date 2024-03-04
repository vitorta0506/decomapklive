.class Ll9/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ll9/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ll9/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll9/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll9/b;Ll9/b;)I
    .locals 0

    invoke-virtual {p1}, Ll9/b;->h()F

    move-result p1

    invoke-virtual {p2}, Ll9/b;->h()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll9/b;

    check-cast p2, Ll9/b;

    invoke-virtual {p0, p1, p2}, Ll9/a$b;->a(Ll9/b;Ll9/b;)I

    move-result p1

    return p1
.end method
