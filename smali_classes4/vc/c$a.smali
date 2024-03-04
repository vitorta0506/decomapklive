.class Lvc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvc/c$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lvc/c;->a()Lpc/a;

    move-result-object v0

    iget-object v1, p0, Lvc/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lpc/a;->f(Landroid/content/Context;)V

    return-void
.end method
