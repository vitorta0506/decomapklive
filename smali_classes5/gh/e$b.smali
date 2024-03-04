.class final Lgh/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgh/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lih/c$b<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgh/e;


# direct methods
.method private constructor <init>(Lgh/e;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lgh/e$b;->a:Lgh/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgh/e;Lgh/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgh/e$b;-><init>(Lgh/e;)V

    return-void
.end method
