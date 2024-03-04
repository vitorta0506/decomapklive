.class final Lug/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lug/e0<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lug/e0;Lug/e0;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/e0<",
            "*>;",
            "Lug/e0<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lug/e0;->w0(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lug/e0;

    check-cast p2, Lug/e0;

    invoke-virtual {p0, p1, p2}, Lug/d$a;->a(Lug/e0;Lug/e0;)I

    move-result p1

    return p1
.end method
