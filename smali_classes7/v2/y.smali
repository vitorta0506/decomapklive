.class public final synthetic Lv2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lv2/c0;


# direct methods
.method public synthetic constructor <init>(Lv2/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/y;->a:Lv2/c0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lv2/y;->a:Lv2/c0;

    invoke-static {v0}, Lv2/c0;->u(Lv2/c0;)V

    return-void
.end method
