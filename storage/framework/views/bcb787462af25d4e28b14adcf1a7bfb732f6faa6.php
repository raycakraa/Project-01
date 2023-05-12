



<?php $__env->startSection('container'); ?>

<h1 class="mb-4">All Posts</h1>

<?php if($posts->count()): ?>
    
<div class="card mb-3">
    <img src="https://source.unsplash.com/1200x400/?<?php echo e($posts[0]->category->name); ?>" class="card-img-top" alt="<?php echo e($posts[0]->category->name); ?>">
    <div class="card-body text-center">
      <h3 class="card-title"> <a href="/posts/<?php echo e($posts[0]->slug); ?>" class="text-decoration-none"> <?php echo e($posts[0]->title); ?> </a></h3>
      <p> <small> By <?php echo e($posts[0]->user->name); ?> in <?php echo e($posts[0]->category->name); ?> <?php echo e($posts[0]->created_at->diffForHumans()); ?></small>  </p>
      <p class="card-text"><?php echo e($posts[0]->excerpt); ?></p>
      
      <a href="/posts/<?php echo e($posts[0]->slug); ?>" class="text-decoration-none btn btn-primary"> Read more </a>

    </div>
</div> 

<?php else: ?>

<p class="text-center fs-4"> No post found. </p>

<?php endif; ?>


 



<div class="container mb-4 pb-4">
    <div class="row">
        <?php $__currentLoopData = $posts->skip(1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $post): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col md-4 mb-4">

                <div class="card" style="width: 25rem;">
                    <img src="https://source.unsplash.com/300x200/?<?php echo e($post->category->name); ?>" class="card-img-top" alt="<?php echo e($post->category->name); ?>">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo e($post->title); ?></h5>
                        <p> <small> By <?php echo e($post->user->name); ?> in <?php echo e($post->category->name); ?> </small> </p>
                        <p class="card-text"> <?php echo e($post->excerpt); ?> </p>
                        <a href="/posts/<?php echo e($post->slug); ?>" class="text-decoration-none"> Read more.. </a>
                    </div>
                </div>

            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div>


    

    
    

    





<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\App\project-01\resources\views/posts.blade.php ENDPATH**/ ?>