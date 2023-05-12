<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="/">Weblog</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link <?php echo e(($title === "Home") ? 'active' : ''); ?>"  href="/">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link <?php echo e(($title === "About") ? 'active' : ''); ?>" href="/about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link <?php echo e(($title === "Blog") ? 'active' : ''); ?>" href="/blog">Blog</a>
          </li>
        </ul>

        <ul class="navbar-nav ms-auto">
        <?php if(auth()->guard()->check()): ?>

        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          Welcome back, <?php echo e(auth()->user()->name); ?>

        </a>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#">My Dashboard</a></li>
          <li><hr class="dropdown-divider"></li>
          <li>
            <form action="/logout" method="post" href="#">
              <?php echo csrf_field(); ?>
              <button type="submit" class="dropdown-item"> Sign Out </button>
            </form>
          </li>
        </ul>
      </li>


        <?php else: ?>
          <li class="nav-item">
            <a href="/login" class="nav-link <?php echo e(($title === "Login") ? 'active' : ''); ?>"> Sign In </a>
          </li>

          <?php endif; ?> 
        </ul>

      </div>
    </div>
</nav><?php /**PATH D:\App\project-01\resources\views/partials/navbar.blade.php ENDPATH**/ ?>