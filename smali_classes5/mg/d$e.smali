.class Lmg/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmg/d;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmg/d;


# direct methods
.method constructor <init>(Lmg/d;)V
    .locals 0

    iput-object p1, p0, Lmg/d$e;->a:Lmg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmg/d$e;->a:Lmg/d;

    invoke-static {v0}, Lmg/d;->b1(Lmg/d;)V

    return-void
.end method