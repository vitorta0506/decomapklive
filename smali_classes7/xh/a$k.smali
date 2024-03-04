.class final Lxh/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lvh/e;


# direct methods
.method constructor <init>(Lvh/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxh/a$k;->a:Lvh/e;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lxh/a$k;->a:Lvh/e;

    invoke-interface {p1}, Lvh/e;->a()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
