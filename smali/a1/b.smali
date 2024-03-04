.class public final synthetic La1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/suggestedevents/ViewObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/suggestedevents/ViewObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La1/b;->a:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, La1/b;->a:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-static {v0}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->a(Lcom/facebook/appevents/suggestedevents/ViewObserver;)V

    return-void
.end method
