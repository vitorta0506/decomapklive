.class Lmg/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmg/b;


# direct methods
.method constructor <init>(Lmg/b;)V
    .locals 0

    iput-object p1, p0, Lmg/b$a;->a:Lmg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmg/b$a;->a:Lmg/b;

    invoke-static {v0}, Lmg/b;->D0(Lmg/b;)V

    return-void
.end method
