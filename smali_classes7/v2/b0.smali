.class public final synthetic Lv2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv2/c0;

.field public final synthetic b:Lc2/b0;


# direct methods
.method public synthetic constructor <init>(Lv2/c0;Lc2/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/b0;->a:Lv2/c0;

    iput-object p2, p0, Lv2/b0;->b:Lc2/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv2/b0;->a:Lv2/c0;

    iget-object v1, p0, Lv2/b0;->b:Lc2/b0;

    invoke-static {v0, v1}, Lv2/c0;->w(Lv2/c0;Lc2/b0;)V

    return-void
.end method
