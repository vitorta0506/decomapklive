.class public final synthetic Lcom/vk/api/sdk/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/vk/api/sdk/ui/VKConfirmationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vk/api/sdk/ui/VKConfirmationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/ui/h;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/ui/h;->a:Lcom/vk/api/sdk/ui/VKConfirmationActivity;

    invoke-static {v0, p1, p2}, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->b(Lcom/vk/api/sdk/ui/VKConfirmationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
