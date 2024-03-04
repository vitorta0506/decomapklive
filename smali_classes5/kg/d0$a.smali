.class Lkg/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkg/d0;


# direct methods
.method constructor <init>(Lkg/d0;)V
    .locals 0

    iput-object p1, p0, Lkg/d0$a;->a:Lkg/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lkg/d0$a;->a:Lkg/d0;

    invoke-virtual {v0}, Lkg/d0;->R()Z

    return-void
.end method
