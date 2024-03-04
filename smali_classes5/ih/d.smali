.class final Lih/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lih/c$b<",
        "Leh/e1;",
        "Lih/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Leh/j0$b;

.field private final b:Lgh/b;


# direct methods
.method constructor <init>(Leh/j0$b;)V
    .locals 1

    .line 1
    invoke-static {}, Lgh/b;->a()Lgh/b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lih/d;-><init>(Leh/j0$b;Lgh/b;)V

    return-void
.end method

.method constructor <init>(Leh/j0$b;Lgh/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lih/d;->a:Leh/j0$b;

    .line 4
    iput-object p2, p0, Lih/d;->b:Lgh/b;

    return-void
.end method
