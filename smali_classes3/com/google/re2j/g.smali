.class abstract Lcom/google/re2j/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/g$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/CharSequence;II)Lcom/google/re2j/g;
    .locals 1

    new-instance v0, Lcom/google/re2j/g$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/re2j/g$a;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract b(I)I
.end method

.method abstract c()I
.end method

.method abstract e(Lcom/google/re2j/k;I)I
.end method

.method abstract f(I)I
.end method
