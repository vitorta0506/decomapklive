.class final Lg0/i$b;
.super Lg0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg0/c<",
        "Lg0/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg0/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lg0/l;
    .locals 1

    invoke-virtual {p0}, Lg0/i$b;->d()Lg0/i$a;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lg0/i$a;
    .locals 1

    new-instance v0, Lg0/i$a;

    invoke-direct {v0, p0}, Lg0/i$a;-><init>(Lg0/i$b;)V

    return-object v0
.end method

.method e(ILjava/lang/Class;)Lg0/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lg0/i$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg0/c;->b()Lg0/l;

    move-result-object v0

    check-cast v0, Lg0/i$a;

    .line 2
    invoke-virtual {v0, p1, p2}, Lg0/i$a;->b(ILjava/lang/Class;)V

    return-object v0
.end method
