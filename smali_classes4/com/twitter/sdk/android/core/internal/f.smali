.class public final synthetic Lcom/twitter/sdk/android/core/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/twitter/sdk/android/core/internal/g;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/core/internal/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/f;->a:Lcom/twitter/sdk/android/core/internal/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/f;->a:Lcom/twitter/sdk/android/core/internal/g;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/g;->c()V

    return-void
.end method
